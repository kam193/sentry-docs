require 'fileutils'
require "nokogiri"
require "json"
require "uri"

class PlatformAPIError < StandardError
end

def write_page(path, markdown, frontmatter)
  full_path = "gatsby/src/wizard/#{path}"
  FileUtils.mkdir_p File.dirname(full_path)
  File.open(full_path, "w") do |f|
    f.write("---\n")
    frontmatter.each { |k, v| f.write("#{k}: #{v}\n") }
    f.write("---\n")
    f.write(markdown)
  end
end

Jekyll::Hooks.register :site, :pre_render, priority: :high do |site|
  if ENV["JEKYLL_ENABLE_PLATFORM_API"] == "false"
    puts "Platform API is disabled. Run with JEKYLL_ENABLE_PLATFORM_API=true to enable"
    next
  end

  puts "Generating Wizard pages for Gatsby"

  liquid_options = site.config["liquid"]
  payload = site.site_payload

  site.data["platforms"].each do |platform|
    next if platform["wizard"].nil? || platform["wizard_parent"].nil?

    file_name = "#{platform["slug"]}.json"
    group_slug = platform["wizard_parent"]
    is_self = group_slug === platform["slug"]
    grouped_file = group_slug === platform["slug"] ? file_name : "#{group_slug}/#{file_name}"

    # This is a workaround to match JavaScript to browser docs now
    if platform["wizard"] === true and platform["slug"] == "javascript"
      platform["slug"] = "browser"
      is_self = true
      grouped_file = file_name
    end

    platform_slug = is_self ? "_self" : platform["slug"]
    doc_link = platform["wizard"] === true ? "/error-reporting/quickstart/?platform=#{platform["slug"]}" : platform["doc_link"]
    platform["doc_link"] = "#{site.config["url"]}#{ doc_link }"

    documentation = site.collections["documentation"].docs

    directives = case platform["wizard"]
    when TrueClass
      ["_documentation/error-reporting/quickstart.md"]
    when Array
      platform["wizard"]
    when NilClass
    else
      raise PlatformAPIError, "Unsupported value for `wizard` in #{platform["slug"]}: Must be `true` or an array of file paths."
    end

    # Create entry for _platforms/<platform>.json or _platforms/<parent>/<platform>.json
    snippets = directives.map do |directive|
      file_path, section_id = directive.split "#"
      document = documentation.find { |d| d.relative_path === file_path }

      # https://humanwhocodes.com/blog/2019/04/jekyll-hooks-output-markdown/
      template = site.liquid_renderer.file(document.path).parse(document.content)

      info = {
        :registers        => { :site => site, :page => document.to_liquid },
        :strict_filters   => liquid_options["strict_filters"],
        :strict_variables => liquid_options["strict_variables"],
      }
      rendered_content = template.render!(payload, info)

      blocks = rendered_content.scan(/<!--\s?WIZARD\s?([^\s]*?)\s?-->([\s\S]+?)<!--\s?ENDWIZARD\s?-->/)

      body = if section_id.nil?
        blocks.map { |b| b[1] }.join
      else
        match = blocks.find { |b| b[0] === section_id }
        raise PlatformAPIError, "Could not find wizard section '#{section_id}' in #{file_path}" if match.nil?
        match[1]
      end

      body.gsub(/<!--\s?WIZARDHIDE\s?([^\s]*?)\s?-->[\s\S]+?<!--\s?ENDWIZARDHIDE\s?-->/, "")
    end

    body = snippets.join.strip

    if body == ""
      Jekyll.logger.warn "Wizard", "No content generated for wizard in #{platform["slug"]}"
      next
    end

    dir = is_self ? "_platforms" : "_platforms/#{group_slug}"
    page_path = is_self ? "#{platform["slug"]}/index.md" : "#{group_slug}/#{platform["slug"]}.md"

    # The first two cases are legacy structure for docs
    case platform['slug']
    when "cocoa"
      write_page("react-native/index.md", body, {
        :name => platform["name"],
        :doc_link => platform["doc_link"],
        :support_level => platform["support_level"],
        :type => platform["type"],
      })
      write_page(page_path, body, {
        :name => platform["name"],
        :doc_link => platform["doc_link"],
        :support_level => platform["support_level"],
        :type => platform["type"],
      })
    when "objc"
      write_page("cocoa/index.md", body, {
        :name => platform["name"],
        :doc_link => platform["doc_link"],
        :support_level => platform["support_level"],
        :type => platform["type"],
      })
      write_page(page_path, body, {
        :name => platform["name"],
        :doc_link => platform["doc_link"],
        :support_level => platform["support_level"],
        :type => platform["type"],
      })
    else
      write_page(page_path, body, {
        :name => platform["name"],
        :doc_link => platform["doc_link"],
        :support_level => platform["support_level"],
        :type => platform["type"],
      })
    end
  end
end
