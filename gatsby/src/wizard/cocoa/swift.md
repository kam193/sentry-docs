---
name: Swift
doc_link: https://docs.sentry.io/platforms/cocoa/
support_level: production
type: language
---
This is the documentation for our Cocoa SDK (Swift and Objective-C).
If you are migrating from an older version, please consider our [Migration Guide](https://github.com/getsentry/sentry-cocoa/blob/master/MIGRATION.md). Also always make sure to follow the [changelog](https://github.com/getsentry/sentry-cocoa/blob/master/CHANGELOG.md)

## Installation {#install}

The SDK can be installed using [CocoaPods](http://cocoapods.org), [Carthage](https://github.com/Carthage/Carthage), or [Swift Package Manager](https://swift.org/package-manager/). This is the recommended SDK for both Swift and Objective-C projects.

It supports iOS (>= 8.0), tvOS (>= 9.0), macOS (>= 10.10) and partially watchOS (>= 2.0).

### CocoaPods

We recommend installing the SDK with CocoaPods..
To integrate Sentry into your Xcode project, specify it in your _Podfile_:

```ruby
platform :ios, '8.0'
use_frameworks! # This is important

target 'YourApp' do
    pod 'Sentry', :git => 'https://github.com/getsentry/sentry-cocoa.git', :tag => '5.1.10-beta.0'
end
```
<!-- 5.1.10-beta.0 -->

Afterwards run `pod install`.

### Carthage

To integrate Sentry into your Xcode project using Carthage, specify it in your _Cartfile_:

```ruby
github "getsentry/sentry-cocoa" "5.1.10-beta.0"
```

Run `carthage update` to download the framework and drag the built _Sentry.framework_ into your Xcode project.

We also provide a pre-built version for every release which can be downloaded at [releases on GitHub](https://github.com/getsentry/sentry-cocoa/releases).

### Swift Package Manager

To integrate Sentry into your Xcode project using SPM, open your App in Xcode and open `File` -> `Swift Packages` -> `Add Package Dependency`. Then add the SDK by entering the git repo url `https://github.com/getsentry/sentry-cocoa.git`, and select a version (or branch) on the next page.

NOTE: Version tags or branches need to have the Package.swift file in it or Xcode won't be able to install the package.

## Configuration {#configure}

Make sure you initalize the SDK as soon as possible in your application lifecycle e.g. in your AppDelegate `application:didFinishLaunchingWithOptions` method:

<div class="platform-specific-content" data-platform-specific-content>
  <div class="nav pb-1 flex">
    <div class="dropdown mr-2 mb-1">
      <a class="btn btn-sm btn-secondary dropdown-toggle" href="#" role="button" id="37a6259cc0c1dae299a7866489dff0bd-dropdown" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false" data-not-dynamic data-platform-switcher-target>
        Node.js
      </a>

      <div class="nav dropdown-menu" id="37a6259cc0c1dae299a7866489dff0bd-tab" role="tablist" aria-hidden="true"><a class="dropdown-item active" id="37a6259cc0c1dae299a7866489dff0bd-objc-tab" data-platform="objc" data-toggle="platform" href="#37a6259cc0c1dae299a7866489dff0bd-objc" role="tab" aria-controls="37a6259cc0c1dae299a7866489dff0bd-objc" aria-selected="true" data-not-dynamic>Objective-C</a><a class="dropdown-item" id="37a6259cc0c1dae299a7866489dff0bd-swift-tab" data-platform="swift" data-toggle="platform" href="#37a6259cc0c1dae299a7866489dff0bd-swift" role="tab" aria-controls="37a6259cc0c1dae299a7866489dff0bd-swift" aria-selected="false" data-not-dynamic>Swift</a><a class="dropdown-item" href="/platforms/" data-toggle="tooltip" data-placement="right" title="Click to see other platforms we support but that don't follow the unified&nbsp;API"><em>Platform not listed?</em></a>
      </div>
    </div>
  </div>

  <div class="tab-content" id="37a6259cc0c1dae299a7866489dff0bd-tabContent"><div class="tab-pane show active" id="37a6259cc0c1dae299a7866489dff0bd-objc" data-slug="objc" role="tabpanel" aria-labelledby="37a6259cc0c1dae299a7866489dff0bd-objc-tab">
        <div class="language-objc highlighter-rouge"><div class="highlight"><pre class="highlight"><code><span class="k">@import</span> <span class="n">Sentry</span><span class="p">;</span>

<span class="k">-</span> <span class="p">(</span><span class="n">BOOL</span><span class="p">)</span><span class="nf">application</span><span class="p">:(</span><span class="n">UIApplication</span> <span class="o">*</span><span class="p">)</span><span class="nv">application</span> <span class="nf">didFinishLaunchingWithOptions</span><span class="p">:(</span><span class="n">NSDictionary</span> <span class="o">*</span><span class="p">)</span><span class="nv">launchOptions</span> <span class="p">{</span>

    <span class="c1">// Added in 5.1.6</span>
    <span class="p">[</span><span class="n">SentrySDK</span> <span class="nf">startWithConfigureOptions</span><span class="p">:</span><span class="o">^</span><span class="p">(</span><span class="n">SentryOptions</span> <span class="o">*</span><span class="n">options</span><span class="p">)</span> <span class="p">{</span>
        <span class="n">options</span><span class="p">.</span><span class="n">dsn</span> <span class="o">=</span> <span class="s">@"___PUBLIC_DSN___"</span><span class="p">;</span>
        <span class="n">options</span><span class="p">.</span><span class="n">debug</span> <span class="o">=</span> <span class="nb">@YES</span><span class="p">;</span> <span class="c1">// Enabled debug when first installing is always helpful</span>
    <span class="p">}];</span>

    <span class="c1">// Or</span>

    <span class="c1">// Added in 5.0.0</span>
    <span class="p">[</span><span class="n">SentrySDK</span> <span class="nf">startWithOptions</span><span class="p">:@{</span>
        <span class="s">@"dsn"</span><span class="o">:</span> <span class="s">@"___PUBLIC_DSN___"</span><span class="p">,</span>
        <span class="s">@"debug"</span><span class="o">:</span> <span class="err">@</span><span class="p">(</span><span class="nb">YES</span><span class="p">)</span> <span class="c1">// Enabled debug when first installing is always helpful</span>
    <span class="p">}];</span>

    <span class="k">return</span> <span class="nb">YES</span><span class="p">;</span>
<span class="p">}</span>
</code></pre></div></div>

      </div><div class="tab-pane" id="37a6259cc0c1dae299a7866489dff0bd-swift" data-slug="swift" role="tabpanel" aria-labelledby="37a6259cc0c1dae299a7866489dff0bd-swift-tab">
        <div class="language-swift highlighter-rouge"><div class="highlight"><pre class="highlight"><code><span class="kd">import</span> <span class="kt">Sentry</span> <span class="c1">// Make sure you import Sentry</span>

<span class="c1">// ....</span>

<span class="kd">func</span> <span class="nf">application</span><span class="p">(</span><span class="n">_</span> <span class="nv">application</span><span class="p">:</span> <span class="kt">UIApplication</span><span class="p">,</span>
    <span class="n">didFinishLaunchingWithOptions</span> <span class="nv">launchOptions</span><span class="p">:</span> <span class="p">[</span><span class="kt">UIApplication</span><span class="o">.</span><span class="kt">LaunchOptionsKey</span><span class="p">:</span> <span class="kt">Any</span><span class="p">]?)</span> <span class="o">-&gt;</span> <span class="kt">Bool</span> <span class="p">{</span>

    <span class="c1">// Added in 5.1.6</span>
    <span class="kt">SentrySDK</span><span class="o">.</span><span class="n">start</span> <span class="p">{</span> <span class="n">options</span> <span class="k">in</span>
        <span class="n">options</span><span class="o">.</span><span class="n">dsn</span> <span class="o">=</span> <span class="s">"___PUBLIC_DSN___"</span>
        <span class="n">options</span><span class="o">.</span><span class="n">debug</span> <span class="o">=</span> <span class="kc">true</span> <span class="c1">// Enabled debug when first installing is always helpful</span>
    <span class="p">}</span>  

    <span class="c1">// Or</span>

    <span class="c1">// Added in 5.0.0</span>
    <span class="kt">SentrySDK</span><span class="o">.</span><span class="nf">start</span><span class="p">(</span><span class="nv">options</span><span class="p">:</span> <span class="p">[</span>
        <span class="s">"dsn"</span><span class="p">:</span> <span class="s">"___PUBLIC_DSN___"</span><span class="p">,</span>
        <span class="s">"debug"</span><span class="p">:</span> <span class="kc">true</span> <span class="c1">// Enabled debug when first installing is always helpful</span>
    <span class="p">])</span>

    <span class="k">return</span> <span class="kc">true</span>
<span class="p">}</span>
</code></pre></div></div>

      </div></div>
</div>

## Debug Symbols {#sentry-cocoa-debug-symbols}

Before capturing crashes, you need to provide debug information to Sentry. Debug information is provided by uploading dSYM files using one of two methods, dependent on your setup:

-   [With Bitcode](/platforms/cocoa/dsym/#dsym-with-bitcode)
-   [Without Bitcode](/platforms/cocoa/dsym/#dsym-without-bitcode)
