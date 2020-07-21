---
name: ASP.NET Core
doc_link: https://docs.sentry.io/error-reporting/quickstart/?platform=aspnetcore
support_level: production
type: framework
---
<div class="platform-specific-content" data-platform-specific-content="">
  <div class="nav pb-1 flex">
    <div class="dropdown mr-2 mb-1">
      <a class="btn btn-sm btn-secondary dropdown-toggle" href="#" role="button" id="37a6259cc0c1dae299a7866489dff0bd-dropdown" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false" data-not-dynamic="" data-platform-switcher-target="">
        Node.js
      </a>

      <div class="nav dropdown-menu" id="37a6259cc0c1dae299a7866489dff0bd-tab" role="tablist" aria-hidden="true"><a class="dropdown-item active" id="37a6259cc0c1dae299a7866489dff0bd-aspnetcore-tab" data-platform="aspnetcore" data-toggle="platform" href="#37a6259cc0c1dae299a7866489dff0bd-aspnetcore" role="tab" aria-controls="37a6259cc0c1dae299a7866489dff0bd-aspnetcore" aria-selected="true" data-not-dynamic="">ASP.NET Core</a><a class="dropdown-item" id="37a6259cc0c1dae299a7866489dff0bd-browser-tab" data-platform="browser" data-toggle="platform" href="#37a6259cc0c1dae299a7866489dff0bd-browser" role="tab" aria-controls="37a6259cc0c1dae299a7866489dff0bd-browser" aria-selected="false" data-not-dynamic="">Browser JavaScript</a><a class="dropdown-item" id="37a6259cc0c1dae299a7866489dff0bd-browsernpm-tab" data-platform="browsernpm" data-toggle="platform" href="#37a6259cc0c1dae299a7866489dff0bd-browsernpm" role="tab" aria-controls="37a6259cc0c1dae299a7866489dff0bd-browsernpm" aria-selected="false" data-not-dynamic="">Browser JavaScript NPM</a><a class="dropdown-item" id="37a6259cc0c1dae299a7866489dff0bd-cordova-tab" data-platform="cordova" data-toggle="platform" href="#37a6259cc0c1dae299a7866489dff0bd-cordova" role="tab" aria-controls="37a6259cc0c1dae299a7866489dff0bd-cordova" aria-selected="false" data-not-dynamic="">Cordova</a><a class="dropdown-item" id="37a6259cc0c1dae299a7866489dff0bd-csharp-tab" data-platform="csharp" data-toggle="platform" href="#37a6259cc0c1dae299a7866489dff0bd-csharp" role="tab" aria-controls="37a6259cc0c1dae299a7866489dff0bd-csharp" aria-selected="false" data-not-dynamic="">C#</a><a class="dropdown-item" id="37a6259cc0c1dae299a7866489dff0bd-electron-tab" data-platform="electron" data-toggle="platform" href="#37a6259cc0c1dae299a7866489dff0bd-electron" role="tab" aria-controls="37a6259cc0c1dae299a7866489dff0bd-electron" aria-selected="false" data-not-dynamic="">Electron</a><a class="dropdown-item" id="37a6259cc0c1dae299a7866489dff0bd-go-tab" data-platform="go" data-toggle="platform" href="#37a6259cc0c1dae299a7866489dff0bd-go" role="tab" aria-controls="37a6259cc0c1dae299a7866489dff0bd-go" aria-selected="false" data-not-dynamic="">Go</a><a class="dropdown-item" id="37a6259cc0c1dae299a7866489dff0bd-native-tab" data-platform="native" data-toggle="platform" href="#37a6259cc0c1dae299a7866489dff0bd-native" role="tab" aria-controls="37a6259cc0c1dae299a7866489dff0bd-native" aria-selected="false" data-not-dynamic="">Native (C/C++)</a><a class="dropdown-item" id="37a6259cc0c1dae299a7866489dff0bd-node-tab" data-platform="node" data-toggle="platform" href="#37a6259cc0c1dae299a7866489dff0bd-node" role="tab" aria-controls="37a6259cc0c1dae299a7866489dff0bd-node" aria-selected="false" data-not-dynamic="">Node.js</a><a class="dropdown-item" id="37a6259cc0c1dae299a7866489dff0bd-php-tab" data-platform="php" data-toggle="platform" href="#37a6259cc0c1dae299a7866489dff0bd-php" role="tab" aria-controls="37a6259cc0c1dae299a7866489dff0bd-php" aria-selected="false" data-not-dynamic="">PHP</a><a class="dropdown-item" id="37a6259cc0c1dae299a7866489dff0bd-python-tab" data-platform="python" data-toggle="platform" href="#37a6259cc0c1dae299a7866489dff0bd-python" role="tab" aria-controls="37a6259cc0c1dae299a7866489dff0bd-python" aria-selected="false" data-not-dynamic="">Python</a><a class="dropdown-item" id="37a6259cc0c1dae299a7866489dff0bd-rust-tab" data-platform="rust" data-toggle="platform" href="#37a6259cc0c1dae299a7866489dff0bd-rust" role="tab" aria-controls="37a6259cc0c1dae299a7866489dff0bd-rust" aria-selected="false" data-not-dynamic="">Rust</a><a class="dropdown-item" href="/platforms/" data-toggle="tooltip" data-placement="right" title="Click to see other platforms we support but that don't follow the unified&nbsp;API"><em>Platform not listed?</em></a>
      </div>
    </div>
  </div>

  <div class="tab-content" id="37a6259cc0c1dae299a7866489dff0bd-tabContent"><div class="tab-pane show active" id="37a6259cc0c1dae299a7866489dff0bd-aspnetcore" data-slug="aspnetcore" role="tabpanel" aria-labelledby="37a6259cc0c1dae299a7866489dff0bd-aspnetcore-tab">
        <p>Install the <strong>NuGet</strong> package:</p>

<p>Package Manager:</p>
<div class="language-shell highlighter-rouge"><div class="highlight"><pre class="highlight"><code>Install-Package Sentry.AspNetCore <span class="nt">-Version</span> 2.1.4
</code></pre></div></div>

<p>.NET Core CLI:</p>
<div class="language-shell highlighter-rouge"><div class="highlight"><pre class="highlight"><code>dotnet add package Sentry.AspNetCore <span class="nt">-v</span> 2.1.4
</code></pre></div></div>

      </div><div class="tab-pane" id="37a6259cc0c1dae299a7866489dff0bd-browser" data-slug="browser" role="tabpanel" aria-labelledby="37a6259cc0c1dae299a7866489dff0bd-browser-tab">
        <p>The quickest way to get started is to use the CDN hosted version of the JavaScript browser SDK:</p>

<div class="language-html highlighter-rouge"><div class="highlight"><pre class="highlight"><code><span class="nt">&lt;script </span><span class="na">src=</span><span class="s">"https://browser.sentry-cdn.com/5.19.2/bundle.min.js"</span> <span class="na">integrity=</span><span class="s">"sha384-JpEWxJ7oLRn+baXBgcCKEv73uYWsgouzEResgJneOXvTjDZ+1crAXcNAKZoiL96Z"</span> <span class="na">crossorigin=</span><span class="s">"anonymous"</span><span class="nt">&gt;</span>
<span class="nt">&lt;/script&gt;</span>
</code></pre></div></div>



      </div><div class="tab-pane" id="37a6259cc0c1dae299a7866489dff0bd-browsernpm" data-slug="browsernpm" role="tabpanel" aria-labelledby="37a6259cc0c1dae299a7866489dff0bd-browsernpm-tab">
        <p>If you are using <code class="highlighter-rouge">yarn</code> or <code class="highlighter-rouge">npm</code> you can add our package as a dependency:</p>

<div class="language-bash highlighter-rouge"><div class="highlight"><pre class="highlight"><code><span class="c"># Using yarn</span>
<span class="nv">$ </span>yarn add @sentry/browser@5.19.2

<span class="c"># Using npm</span>
<span class="nv">$ </span>npm <span class="nb">install</span> @sentry/browser@5.19.2
</code></pre></div></div>



      </div><div class="tab-pane" id="37a6259cc0c1dae299a7866489dff0bd-cordova" data-slug="cordova" role="tabpanel" aria-labelledby="37a6259cc0c1dae299a7866489dff0bd-cordova-tab">
        <p>Install our SDK using the cordova command:</p>

<div class="language-bash highlighter-rouge"><div class="highlight"><pre class="highlight"><code><span class="nv">$ </span>cordova plugin add sentry-cordova@0.12.3
</code></pre></div></div>

      </div><div class="tab-pane" id="37a6259cc0c1dae299a7866489dff0bd-csharp" data-slug="csharp" role="tabpanel" aria-labelledby="37a6259cc0c1dae299a7866489dff0bd-csharp-tab">
        <p>Install the <strong>NuGet</strong> package:</p>

<div class="language-shell highlighter-rouge"><div class="highlight"><pre class="highlight"><code><span class="c"># Using Package Manager</span>
Install-Package Sentry <span class="nt">-Version</span> 2.1.4

<span class="c"># Or using .NET Core CLI</span>
dotnet add package Sentry <span class="nt">-v</span> 2.1.4
</code></pre></div></div>

<div class="alert alert-info" role="alert"><h5 class="no_toc">Using .NET Framework prior to 4.6.1?</h5><div class="alert-body content-flush-bottom"><p><a href="https://docs.sentry.io/clients/csharp/">Our legacy SDK</a> supports .NET Framework as early as 3.5.</p> </div>
</div>


      </div><div class="tab-pane" id="37a6259cc0c1dae299a7866489dff0bd-electron" data-slug="electron" role="tabpanel" aria-labelledby="37a6259cc0c1dae299a7866489dff0bd-electron-tab">
        <p>If you are using <code class="highlighter-rouge">yarn</code> or <code class="highlighter-rouge">npm</code> you can add our package as a dependency:</p>

<div class="language-bash highlighter-rouge"><div class="highlight"><pre class="highlight"><code><span class="c"># Using yarn</span>
<span class="nv">$ </span>yarn add @sentry/electron@1.4.0

<span class="c"># Using npm</span>
<span class="nv">$ </span>npm <span class="nb">install</span> @sentry/electron@1.4.0
</code></pre></div></div>

      </div><div class="tab-pane" id="37a6259cc0c1dae299a7866489dff0bd-go" data-slug="go" role="tabpanel" aria-labelledby="37a6259cc0c1dae299a7866489dff0bd-go-tab">
        <p>Install our Go SDK using <a href="https://golang.org/cmd/go/#hdr-Module_aware_go_get"><code class="highlighter-rouge">go get</code></a>:</p>

<div class="language-bash highlighter-rouge"><div class="highlight"><pre class="highlight"><code><span class="nv">$ </span>go get github.com/getsentry/sentry-go
</code></pre></div></div>

      </div><div class="tab-pane" id="37a6259cc0c1dae299a7866489dff0bd-native" data-slug="native" role="tabpanel" aria-labelledby="37a6259cc0c1dae299a7866489dff0bd-native-tab">
        <p>Install the SDK by downloading the <a href="https://github.com/getsentry/sentry-native/releases">latest
release</a>. Next, follow the
instructions in the <a href="/platforms/native/"><em>Native SDK Documentation</em></a> to build and link the SDK
library.</p>

      </div><div class="tab-pane" id="37a6259cc0c1dae299a7866489dff0bd-node" data-slug="node" role="tabpanel" aria-labelledby="37a6259cc0c1dae299a7866489dff0bd-node-tab">
        <p>If you are using <code class="highlighter-rouge">yarn</code> or <code class="highlighter-rouge">npm</code> you can add our package as a dependency:</p>

<div class="language-bash highlighter-rouge"><div class="highlight"><pre class="highlight"><code><span class="c"># Using yarn</span>
<span class="nv">$ </span>yarn add @sentry/node@5.19.2

<span class="c"># Using npm</span>
<span class="nv">$ </span>npm <span class="nb">install</span> @sentry/node@5.19.2
</code></pre></div></div>

      </div><div class="tab-pane" id="37a6259cc0c1dae299a7866489dff0bd-php" data-slug="php" role="tabpanel" aria-labelledby="37a6259cc0c1dae299a7866489dff0bd-php-tab">
        <p>To install the SDK you will need to be using <code class="highlighter-rouge">composer</code> in your project. If you
are not already using Composer please see the <a href="https://getcomposer.org/download/">Composer documentation</a>.</p>

<div class="language-bash highlighter-rouge"><div class="highlight"><pre class="highlight"><code>composer require sentry/sdk:2.1.0
</code></pre></div></div>

      </div><div class="tab-pane" id="37a6259cc0c1dae299a7866489dff0bd-python" data-slug="python" role="tabpanel" aria-labelledby="37a6259cc0c1dae299a7866489dff0bd-python-tab">
        <p>Install our Python SDK using <a href="https://pip.pypa.io/en/stable/"><code class="highlighter-rouge">pip</code></a>:</p>

<div class="language-bash highlighter-rouge"><div class="highlight"><pre class="highlight"><code><span class="nv">$ </span>pip <span class="nb">install</span> <span class="nt">--upgrade</span> sentry-sdk<span class="o">==</span>0.16.1
</code></pre></div></div>

      </div><div class="tab-pane" id="37a6259cc0c1dae299a7866489dff0bd-rust" data-slug="rust" role="tabpanel" aria-labelledby="37a6259cc0c1dae299a7866489dff0bd-rust-tab">
        <p>To add Sentry to your Rust project you just need to add a new dependency to your <code class="highlighter-rouge">Cargo.toml</code>:</p>

<div class="language-toml highlighter-rouge"><div class="highlight"><pre class="highlight"><code><span class="nn">[dependencies]</span>
<span class="py">sentry</span> <span class="p">=</span> <span class="s">"0.19.0"</span>
</code></pre></div></div>

      </div></div>
</div>



<div class="platform-specific-content" data-platform-specific-content="">
  <div class="nav pb-1 flex">
    <div class="dropdown mr-2 mb-1">
      <a class="btn btn-sm btn-secondary dropdown-toggle" href="#" role="button" id="37a6259cc0c1dae299a7866489dff0bd-dropdown" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false" data-not-dynamic="" data-platform-switcher-target="">
        Rust
      </a>

      <div class="nav dropdown-menu" id="37a6259cc0c1dae299a7866489dff0bd-tab" role="tablist" aria-hidden="true"><a class="dropdown-item active" id="37a6259cc0c1dae299a7866489dff0bd-aspnetcore-tab" data-platform="aspnetcore" data-toggle="platform" href="#37a6259cc0c1dae299a7866489dff0bd-aspnetcore" role="tab" aria-controls="37a6259cc0c1dae299a7866489dff0bd-aspnetcore" aria-selected="true" data-not-dynamic="">ASP.NET Core</a><a class="dropdown-item" id="37a6259cc0c1dae299a7866489dff0bd-browser-tab" data-platform="browser" data-toggle="platform" href="#37a6259cc0c1dae299a7866489dff0bd-browser" role="tab" aria-controls="37a6259cc0c1dae299a7866489dff0bd-browser" aria-selected="false" data-not-dynamic="">Browser JavaScript</a><a class="dropdown-item" id="37a6259cc0c1dae299a7866489dff0bd-browsernpm-tab" data-platform="browsernpm" data-toggle="platform" href="#37a6259cc0c1dae299a7866489dff0bd-browsernpm" role="tab" aria-controls="37a6259cc0c1dae299a7866489dff0bd-browsernpm" aria-selected="false" data-not-dynamic="">Browser JavaScript NPM</a><a class="dropdown-item" id="37a6259cc0c1dae299a7866489dff0bd-cordova-tab" data-platform="cordova" data-toggle="platform" href="#37a6259cc0c1dae299a7866489dff0bd-cordova" role="tab" aria-controls="37a6259cc0c1dae299a7866489dff0bd-cordova" aria-selected="false" data-not-dynamic="">Cordova</a><a class="dropdown-item" id="37a6259cc0c1dae299a7866489dff0bd-csharp-tab" data-platform="csharp" data-toggle="platform" href="#37a6259cc0c1dae299a7866489dff0bd-csharp" role="tab" aria-controls="37a6259cc0c1dae299a7866489dff0bd-csharp" aria-selected="false" data-not-dynamic="">C#</a><a class="dropdown-item" id="37a6259cc0c1dae299a7866489dff0bd-electron-tab" data-platform="electron" data-toggle="platform" href="#37a6259cc0c1dae299a7866489dff0bd-electron" role="tab" aria-controls="37a6259cc0c1dae299a7866489dff0bd-electron" aria-selected="false" data-not-dynamic="">Electron</a><a class="dropdown-item" id="37a6259cc0c1dae299a7866489dff0bd-go-tab" data-platform="go" data-toggle="platform" href="#37a6259cc0c1dae299a7866489dff0bd-go" role="tab" aria-controls="37a6259cc0c1dae299a7866489dff0bd-go" aria-selected="false" data-not-dynamic="">Go</a><a class="dropdown-item" id="37a6259cc0c1dae299a7866489dff0bd-native-tab" data-platform="native" data-toggle="platform" href="#37a6259cc0c1dae299a7866489dff0bd-native" role="tab" aria-controls="37a6259cc0c1dae299a7866489dff0bd-native" aria-selected="false" data-not-dynamic="">Native (C/C++)</a><a class="dropdown-item" id="37a6259cc0c1dae299a7866489dff0bd-node-tab" data-platform="node" data-toggle="platform" href="#37a6259cc0c1dae299a7866489dff0bd-node" role="tab" aria-controls="37a6259cc0c1dae299a7866489dff0bd-node" aria-selected="false" data-not-dynamic="">Node.js</a><a class="dropdown-item" id="37a6259cc0c1dae299a7866489dff0bd-php-tab" data-platform="php" data-toggle="platform" href="#37a6259cc0c1dae299a7866489dff0bd-php" role="tab" aria-controls="37a6259cc0c1dae299a7866489dff0bd-php" aria-selected="false" data-not-dynamic="">PHP</a><a class="dropdown-item" id="37a6259cc0c1dae299a7866489dff0bd-python-tab" data-platform="python" data-toggle="platform" href="#37a6259cc0c1dae299a7866489dff0bd-python" role="tab" aria-controls="37a6259cc0c1dae299a7866489dff0bd-python" aria-selected="false" data-not-dynamic="">Python</a><a class="dropdown-item" id="37a6259cc0c1dae299a7866489dff0bd-rust-tab" data-platform="rust" data-toggle="platform" href="#37a6259cc0c1dae299a7866489dff0bd-rust" role="tab" aria-controls="37a6259cc0c1dae299a7866489dff0bd-rust" aria-selected="false" data-not-dynamic="">Rust</a><a class="dropdown-item" href="/platforms/" data-toggle="tooltip" data-placement="right" title="Click to see other platforms we support but that don't follow the unified&nbsp;API"><em>Platform not listed?</em></a>
      </div>
    </div>
  </div>

  <div class="tab-content" id="37a6259cc0c1dae299a7866489dff0bd-tabContent"><div class="tab-pane show active" id="37a6259cc0c1dae299a7866489dff0bd-aspnetcore" data-slug="aspnetcore" role="tabpanel" aria-labelledby="37a6259cc0c1dae299a7866489dff0bd-aspnetcore-tab">
        <p>Add Sentry to <code class="highlighter-rouge">Program.cs</code> through the <code class="highlighter-rouge">WebHostBuilder</code>:</p>

<p>ASP.NET Core 2.x:</p>

<div class="language-csharp highlighter-rouge"><div class="highlight"><pre class="highlight"><code><span class="k">public</span> <span class="k">static</span> <span class="n">IWebHost</span> <span class="nf">BuildWebHost</span><span class="p">(</span><span class="kt">string</span><span class="p">[]</span> <span class="n">args</span><span class="p">)</span> <span class="p">=&gt;</span>
    <span class="n">WebHost</span><span class="p">.</span><span class="nf">CreateDefaultBuilder</span><span class="p">(</span><span class="n">args</span><span class="p">)</span>
        <span class="c1">// Add the following line:</span>
        <span class="p">.</span><span class="nf">UseSentry</span><span class="p">(</span><span class="s">"___PUBLIC_DSN___"</span><span class="p">);</span>
</code></pre></div></div>

<p>ASP.NET Core 3.0:</p>

<div class="language-csharp highlighter-rouge"><div class="highlight"><pre class="highlight"><code><span class="k">public</span> <span class="k">static</span> <span class="n">IHostBuilder</span> <span class="nf">CreateHostBuilder</span><span class="p">(</span><span class="kt">string</span><span class="p">[]</span> <span class="n">args</span><span class="p">)</span> <span class="p">=&gt;</span>
    <span class="n">Host</span><span class="p">.</span><span class="nf">CreateDefaultBuilder</span><span class="p">(</span><span class="n">args</span><span class="p">)</span>
        <span class="p">.</span><span class="nf">ConfigureWebHostDefaults</span><span class="p">(</span><span class="n">webBuilder</span> <span class="p">=&gt;</span>
        <span class="p">{</span>
            <span class="c1">// Add the following line:</span>
            <span class="n">webBuilder</span><span class="p">.</span><span class="nf">UseSentry</span><span class="p">(</span><span class="s">"___PUBLIC_DSN___"</span><span class="p">);</span>
        <span class="p">});</span>
</code></pre></div></div>

      </div><div class="tab-pane" id="37a6259cc0c1dae299a7866489dff0bd-browser" data-slug="browser" role="tabpanel" aria-labelledby="37a6259cc0c1dae299a7866489dff0bd-browser-tab">
        <p>You should <code class="highlighter-rouge">init</code> the Sentry Browser SDK as soon as possible during your page load:</p>

<div class="language-javascript highlighter-rouge"><div class="highlight"><pre class="highlight"><code><span class="nx">Sentry</span><span class="p">.</span><span class="nx">init</span><span class="p">({</span> <span class="na">dsn</span><span class="p">:</span> <span class="dl">'</span><span class="s1">___PUBLIC_DSN___</span><span class="dl">'</span> <span class="p">});</span>
</code></pre></div></div>

      </div><div class="tab-pane" id="37a6259cc0c1dae299a7866489dff0bd-browsernpm" data-slug="browsernpm" role="tabpanel" aria-labelledby="37a6259cc0c1dae299a7866489dff0bd-browsernpm-tab">
        <p>You should <code class="highlighter-rouge">init</code> the Sentry browser SDK as soon as possible during your application load up:</p>

<div class="language-javascript highlighter-rouge"><div class="highlight"><pre class="highlight"><code><span class="k">import</span> <span class="o">*</span> <span class="k">as</span> <span class="nx">Sentry</span> <span class="k">from</span> <span class="dl">'</span><span class="s1">@sentry/browser</span><span class="dl">'</span><span class="p">;</span>

<span class="nx">Sentry</span><span class="p">.</span><span class="nx">init</span><span class="p">({</span> <span class="na">dsn</span><span class="p">:</span> <span class="dl">'</span><span class="s1">___PUBLIC_DSN___</span><span class="dl">'</span> <span class="p">});</span>
</code></pre></div></div>

      </div><div class="tab-pane" id="37a6259cc0c1dae299a7866489dff0bd-cordova" data-slug="cordova" role="tabpanel" aria-labelledby="37a6259cc0c1dae299a7866489dff0bd-cordova-tab">
        <p>You should <code class="highlighter-rouge">init</code> the SDK in the <code class="highlighter-rouge">deviceReady</code> function, to make sure the native integrations runs. For more details about Cordova <a href="/platforms/javascript/cordova/">click here</a></p>

<div class="language-javascript highlighter-rouge"><div class="highlight"><pre class="highlight"><code><span class="nx">onDeviceReady</span><span class="p">:</span> <span class="kd">function</span><span class="p">()</span> <span class="p">{</span>
  <span class="kd">var</span> <span class="nx">Sentry</span> <span class="o">=</span> <span class="nx">cordova</span><span class="p">.</span><span class="nx">require</span><span class="p">(</span><span class="dl">"</span><span class="s2">sentry-cordova.Sentry</span><span class="dl">"</span><span class="p">);</span>
  <span class="nx">Sentry</span><span class="p">.</span><span class="nx">init</span><span class="p">({</span> <span class="na">dsn</span><span class="p">:</span> <span class="dl">'</span><span class="s1">___PUBLIC_DSN___</span><span class="dl">'</span> <span class="p">});</span>
<span class="p">}</span>
</code></pre></div></div>

      </div><div class="tab-pane" id="37a6259cc0c1dae299a7866489dff0bd-csharp" data-slug="csharp" role="tabpanel" aria-labelledby="37a6259cc0c1dae299a7866489dff0bd-csharp-tab">
        <p>You should initialize the SDK as early as possible, like in the <code class="highlighter-rouge">Main</code> method in <code class="highlighter-rouge">Program.cs</code>:</p>

<div class="language-csharp highlighter-rouge"><div class="highlight"><pre class="highlight"><code><span class="k">using</span> <span class="p">(</span><span class="n">SentrySdk</span><span class="p">.</span><span class="nf">Init</span><span class="p">(</span><span class="s">"___PUBLIC_DSN___"</span><span class="p">))</span>
<span class="p">{</span>
    <span class="c1">// App code</span>
<span class="p">}</span>
</code></pre></div></div>

      </div><div class="tab-pane" id="37a6259cc0c1dae299a7866489dff0bd-electron" data-slug="electron" role="tabpanel" aria-labelledby="37a6259cc0c1dae299a7866489dff0bd-electron-tab">
        <p>You need to call <code class="highlighter-rouge">init</code> in your <code class="highlighter-rouge">main</code> and every <code class="highlighter-rouge">renderer</code> process you spawn.
For more details about Electron <a href="/platforms/javascript/electron/">click here</a></p>

<div class="language-javascript highlighter-rouge"><div class="highlight"><pre class="highlight"><code><span class="k">import</span> <span class="o">*</span> <span class="k">as</span> <span class="nx">Sentry</span> <span class="k">from</span> <span class="dl">'</span><span class="s1">@sentry/electron</span><span class="dl">'</span><span class="p">;</span>

<span class="nx">Sentry</span><span class="p">.</span><span class="nx">init</span><span class="p">({</span><span class="na">dsn</span><span class="p">:</span> <span class="dl">'</span><span class="s1">___PUBLIC_DSN___</span><span class="dl">'</span><span class="p">});</span>
</code></pre></div></div>

      </div><div class="tab-pane" id="37a6259cc0c1dae299a7866489dff0bd-go" data-slug="go" role="tabpanel" aria-labelledby="37a6259cc0c1dae299a7866489dff0bd-go-tab">
        <p>Import and initialize the Sentry SDK early in your application’s setup:</p>

<div class="language-go highlighter-rouge"><div class="highlight"><pre class="highlight"><code><span class="k">package</span> <span class="n">main</span>

<span class="k">import</span> <span class="p">(</span>
	<span class="s">"log"</span>

	<span class="s">"github.com/getsentry/sentry-go"</span>
<span class="p">)</span>

<span class="k">func</span> <span class="n">main</span><span class="p">()</span> <span class="p">{</span>
	<span class="n">err</span> <span class="o">:=</span> <span class="n">sentry</span><span class="o">.</span><span class="n">Init</span><span class="p">(</span><span class="n">sentry</span><span class="o">.</span><span class="n">ClientOptions</span><span class="p">{</span>
		<span class="n">Dsn</span><span class="o">:</span> <span class="s">"___PUBLIC_DSN___"</span><span class="p">,</span>
	<span class="p">})</span>
	<span class="k">if</span> <span class="n">err</span> <span class="o">!=</span> <span class="no">nil</span> <span class="p">{</span>
		<span class="n">log</span><span class="o">.</span><span class="n">Fatalf</span><span class="p">(</span><span class="s">"sentry.Init: %s"</span><span class="p">,</span> <span class="n">err</span><span class="p">)</span>
	<span class="p">}</span>
<span class="p">}</span>
</code></pre></div></div>

      </div><div class="tab-pane" id="37a6259cc0c1dae299a7866489dff0bd-native" data-slug="native" role="tabpanel" aria-labelledby="37a6259cc0c1dae299a7866489dff0bd-native-tab">
        <p>Import and initialize the Sentry SDK early in your application setup:</p>

<div class="language-c highlighter-rouge"><div class="highlight"><pre class="highlight"><code><span class="cp">#include &lt;sentry.h&gt;
</span>
<span class="kt">int</span> <span class="nf">main</span><span class="p">(</span><span class="kt">void</span><span class="p">)</span> <span class="p">{</span>
  <span class="n">sentry_options_t</span> <span class="o">*</span><span class="n">options</span> <span class="o">=</span> <span class="n">sentry_options_new</span><span class="p">();</span>
  <span class="n">sentry_options_set_dsn</span><span class="p">(</span><span class="n">options</span><span class="p">,</span> <span class="s">"___PUBLIC_DSN___"</span><span class="p">);</span>
  <span class="n">sentry_init</span><span class="p">(</span><span class="n">options</span><span class="p">);</span>

  <span class="cm">/* ... */</span>

  <span class="c1">// make sure everything flushes</span>
  <span class="n">sentry_shutdown</span><span class="p">();</span>
<span class="p">}</span>
</code></pre></div></div>

<p>Alternatively, the DSN can be passed as <code class="highlighter-rouge">SENTRY_DSN</code> environment variable during
runtime. This can be especially useful for server applications.</p>

      </div><div class="tab-pane" id="37a6259cc0c1dae299a7866489dff0bd-node" data-slug="node" role="tabpanel" aria-labelledby="37a6259cc0c1dae299a7866489dff0bd-node-tab">
        <p>You need to inform the Sentry Node SDK about your DSN:</p>

<div class="language-javascript highlighter-rouge"><div class="highlight"><pre class="highlight"><code><span class="kd">const</span> <span class="nx">Sentry</span> <span class="o">=</span> <span class="nx">require</span><span class="p">(</span><span class="dl">'</span><span class="s1">@sentry/node</span><span class="dl">'</span><span class="p">);</span>
<span class="c1">// or use es6 import statements</span>
<span class="c1">// import * as Sentry from '@sentry/node';</span>

<span class="nx">Sentry</span><span class="p">.</span><span class="nx">init</span><span class="p">({</span> <span class="na">dsn</span><span class="p">:</span> <span class="dl">'</span><span class="s1">___PUBLIC_DSN___</span><span class="dl">'</span> <span class="p">});</span>
</code></pre></div></div>

      </div><div class="tab-pane" id="37a6259cc0c1dae299a7866489dff0bd-php" data-slug="php" role="tabpanel" aria-labelledby="37a6259cc0c1dae299a7866489dff0bd-php-tab">
        <p>To capture all errors, even the one during the startup of your application, you should initialize the Sentry PHP SDK as soon as possible.</p>

<div class="language-php highlighter-rouge"><div class="highlight"><pre class="highlight"><code><span class="nx">Sentry\init</span><span class="p">([</span><span class="s1">'dsn'</span> <span class="o">=&gt;</span> <span class="s1">'___PUBLIC_DSN___'</span> <span class="p">]);</span>
</code></pre></div></div>

      </div><div class="tab-pane" id="37a6259cc0c1dae299a7866489dff0bd-python" data-slug="python" role="tabpanel" aria-labelledby="37a6259cc0c1dae299a7866489dff0bd-python-tab">
        <p>Import and initialize the Sentry SDK early in your application’s setup:</p>

<div class="language-python highlighter-rouge"><div class="highlight"><pre class="highlight"><code><span class="kn">import</span> <span class="nn">sentry_sdk</span>
<span class="n">sentry_sdk</span><span class="p">.</span><span class="n">init</span><span class="p">(</span><span class="s">"___PUBLIC_DSN___"</span><span class="p">)</span>
</code></pre></div></div>

      </div><div class="tab-pane" id="37a6259cc0c1dae299a7866489dff0bd-rust" data-slug="rust" role="tabpanel" aria-labelledby="37a6259cc0c1dae299a7866489dff0bd-rust-tab">
        <p><code class="highlighter-rouge">sentry.init()</code> will return you a guard that when freed, will prevent process exit until all events have been sent (within a timeout):</p>

<div class="language-rust highlighter-rouge"><div class="highlight"><pre class="highlight"><code><span class="k">let</span> <span class="mi">_</span><span class="n">guard</span> <span class="o">=</span> <span class="nn">sentry</span><span class="p">::</span><span class="nf">init</span><span class="p">(</span><span class="s">"___PUBLIC_DSN___"</span><span class="p">);</span>
</code></pre></div></div>

      </div></div>
</div>


<div class="platform-specific-content" data-platform-specific-content="">
  <div class="nav pb-1 flex">
    <div class="dropdown mr-2 mb-1">
      <a class="btn btn-sm btn-secondary dropdown-toggle" href="#" role="button" id="37a6259cc0c1dae299a7866489dff0bd-dropdown" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false" data-not-dynamic="" data-platform-switcher-target="">
        Rust
      </a>

      <div class="nav dropdown-menu" id="37a6259cc0c1dae299a7866489dff0bd-tab" role="tablist" aria-hidden="true"><a class="dropdown-item active" id="37a6259cc0c1dae299a7866489dff0bd-aspnetcore-tab" data-platform="aspnetcore" data-toggle="platform" href="#37a6259cc0c1dae299a7866489dff0bd-aspnetcore" role="tab" aria-controls="37a6259cc0c1dae299a7866489dff0bd-aspnetcore" aria-selected="true" data-not-dynamic="">ASP.NET Core</a><a class="dropdown-item" id="37a6259cc0c1dae299a7866489dff0bd-browser-tab" data-platform="browser" data-toggle="platform" href="#37a6259cc0c1dae299a7866489dff0bd-browser" role="tab" aria-controls="37a6259cc0c1dae299a7866489dff0bd-browser" aria-selected="false" data-not-dynamic="">Browser JavaScript</a><a class="dropdown-item" id="37a6259cc0c1dae299a7866489dff0bd-browsernpm-tab" data-platform="browsernpm" data-toggle="platform" href="#37a6259cc0c1dae299a7866489dff0bd-browsernpm" role="tab" aria-controls="37a6259cc0c1dae299a7866489dff0bd-browsernpm" aria-selected="false" data-not-dynamic="">Browser JavaScript NPM</a><a class="dropdown-item" id="37a6259cc0c1dae299a7866489dff0bd-cordova-tab" data-platform="cordova" data-toggle="platform" href="#37a6259cc0c1dae299a7866489dff0bd-cordova" role="tab" aria-controls="37a6259cc0c1dae299a7866489dff0bd-cordova" aria-selected="false" data-not-dynamic="">Cordova</a><a class="dropdown-item" id="37a6259cc0c1dae299a7866489dff0bd-csharp-tab" data-platform="csharp" data-toggle="platform" href="#37a6259cc0c1dae299a7866489dff0bd-csharp" role="tab" aria-controls="37a6259cc0c1dae299a7866489dff0bd-csharp" aria-selected="false" data-not-dynamic="">C#</a><a class="dropdown-item" id="37a6259cc0c1dae299a7866489dff0bd-electron-tab" data-platform="electron" data-toggle="platform" href="#37a6259cc0c1dae299a7866489dff0bd-electron" role="tab" aria-controls="37a6259cc0c1dae299a7866489dff0bd-electron" aria-selected="false" data-not-dynamic="">Electron</a><a class="dropdown-item" id="37a6259cc0c1dae299a7866489dff0bd-go-tab" data-platform="go" data-toggle="platform" href="#37a6259cc0c1dae299a7866489dff0bd-go" role="tab" aria-controls="37a6259cc0c1dae299a7866489dff0bd-go" aria-selected="false" data-not-dynamic="">Go</a><a class="dropdown-item" id="37a6259cc0c1dae299a7866489dff0bd-native-tab" data-platform="native" data-toggle="platform" href="#37a6259cc0c1dae299a7866489dff0bd-native" role="tab" aria-controls="37a6259cc0c1dae299a7866489dff0bd-native" aria-selected="false" data-not-dynamic="">Native (C/C++)</a><a class="dropdown-item" id="37a6259cc0c1dae299a7866489dff0bd-node-tab" data-platform="node" data-toggle="platform" href="#37a6259cc0c1dae299a7866489dff0bd-node" role="tab" aria-controls="37a6259cc0c1dae299a7866489dff0bd-node" aria-selected="false" data-not-dynamic="">Node.js</a><a class="dropdown-item" id="37a6259cc0c1dae299a7866489dff0bd-php-tab" data-platform="php" data-toggle="platform" href="#37a6259cc0c1dae299a7866489dff0bd-php" role="tab" aria-controls="37a6259cc0c1dae299a7866489dff0bd-php" aria-selected="false" data-not-dynamic="">PHP</a><a class="dropdown-item" id="37a6259cc0c1dae299a7866489dff0bd-python-tab" data-platform="python" data-toggle="platform" href="#37a6259cc0c1dae299a7866489dff0bd-python" role="tab" aria-controls="37a6259cc0c1dae299a7866489dff0bd-python" aria-selected="false" data-not-dynamic="">Python</a><a class="dropdown-item" id="37a6259cc0c1dae299a7866489dff0bd-rust-tab" data-platform="rust" data-toggle="platform" href="#37a6259cc0c1dae299a7866489dff0bd-rust" role="tab" aria-controls="37a6259cc0c1dae299a7866489dff0bd-rust" aria-selected="false" data-not-dynamic="">Rust</a><a class="dropdown-item" href="/platforms/" data-toggle="tooltip" data-placement="right" title="Click to see other platforms we support but that don't follow the unified&nbsp;API"><em>Platform not listed?</em></a>
      </div>
    </div>
  </div>

  <div class="tab-content" id="37a6259cc0c1dae299a7866489dff0bd-tabContent"><div class="tab-pane show active" id="37a6259cc0c1dae299a7866489dff0bd-aspnetcore" data-slug="aspnetcore" role="tabpanel" aria-labelledby="37a6259cc0c1dae299a7866489dff0bd-aspnetcore-tab">
        <p>See the <a href="https://github.com/getsentry/sentry-dotnet/tree/main/samples">provided examples in the <code class="highlighter-rouge">dotnet</code> SDK repository</a> for examples to send your first event to Sentry.</p>

      </div><div class="tab-pane" id="37a6259cc0c1dae299a7866489dff0bd-browser" data-slug="browser" role="tabpanel" aria-labelledby="37a6259cc0c1dae299a7866489dff0bd-browser-tab">
        <p>One way to verify your setup is by intentionally sending an event that breaks your application.</p>

<p>Calling an undefined function will throw an exception:</p>

<div class="language-js highlighter-rouge"><div class="highlight"><pre class="highlight"><code><span class="nx">myUndefinedFunction</span><span class="p">();</span>
</code></pre></div></div>

<p>You can verify the function caused an error by checking your browser console.</p>

      </div><div class="tab-pane" id="37a6259cc0c1dae299a7866489dff0bd-browsernpm" data-slug="browsernpm" role="tabpanel" aria-labelledby="37a6259cc0c1dae299a7866489dff0bd-browsernpm-tab">
        <p>One way to verify your setup is by intentionally sending an event that breaks your application.</p>

<p>Calling an undefined function will throw an exception:</p>

<div class="language-js highlighter-rouge"><div class="highlight"><pre class="highlight"><code><span class="nx">myUndefinedFunction</span><span class="p">();</span>
</code></pre></div></div>

<p>You can verify the function caused an error by checking your browser console.</p>


      </div><div class="tab-pane" id="37a6259cc0c1dae299a7866489dff0bd-cordova" data-slug="cordova" role="tabpanel" aria-labelledby="37a6259cc0c1dae299a7866489dff0bd-cordova-tab">
        <p>One way to verify your setup is by intentionally sending an event that breaks your application.</p>

<p>Calling an undefined function will throw an exception:</p>

<div class="language-js highlighter-rouge"><div class="highlight"><pre class="highlight"><code><span class="nx">myUndefinedFunction</span><span class="p">();</span>
</code></pre></div></div>

      </div><div class="tab-pane" id="37a6259cc0c1dae299a7866489dff0bd-csharp" data-slug="csharp" role="tabpanel" aria-labelledby="37a6259cc0c1dae299a7866489dff0bd-csharp-tab">
        <p>You can verify Sentry is capturing unhandled exceptions by raising an exception. For example, you can use the following snippet to raise a <code class="highlighter-rouge">DivideByZeroException</code>:</p>

<div class="language-csharp highlighter-rouge"><div class="highlight"><pre class="highlight"><code><span class="k">using</span> <span class="p">(</span><span class="n">SentrySdk</span><span class="p">.</span><span class="nf">Init</span><span class="p">(</span><span class="s">"___PUBLIC_DSN___"</span><span class="p">))</span>
<span class="p">{</span>
    <span class="n">Console</span><span class="p">.</span><span class="nf">WriteLine</span><span class="p">(</span><span class="m">1</span> <span class="p">/</span> <span class="m">0</span><span class="p">);</span>
<span class="p">}</span>
</code></pre></div></div>

      </div><div class="tab-pane" id="37a6259cc0c1dae299a7866489dff0bd-electron" data-slug="electron" role="tabpanel" aria-labelledby="37a6259cc0c1dae299a7866489dff0bd-electron-tab">
        <p>One way to verify your setup is by intentionally sending an event that breaks your application.</p>

<p>Calling an undefined function will throw an exception:</p>

<div class="language-js highlighter-rouge"><div class="highlight"><pre class="highlight"><code><span class="nx">myUndefinedFunction</span><span class="p">();</span>
</code></pre></div></div>

<p>You may want to try inserting this into both your <code class="highlighter-rouge">main</code> and any <code class="highlighter-rouge">renderer</code>
processes to verify Sentry is operational in both.</p>

      </div><div class="tab-pane" id="37a6259cc0c1dae299a7866489dff0bd-go" data-slug="go" role="tabpanel" aria-labelledby="37a6259cc0c1dae299a7866489dff0bd-go-tab">
        <p>The quickest way to verify Sentry in your Go program is to capture a message:</p>

<div class="language-go highlighter-rouge"><div class="highlight"><pre class="highlight"><code><span class="k">package</span> <span class="n">main</span>

<span class="k">import</span> <span class="p">(</span>
	<span class="s">"log"</span>
	<span class="s">"time"</span>

	<span class="s">"github.com/getsentry/sentry-go"</span>
<span class="p">)</span>

<span class="k">func</span> <span class="n">main</span><span class="p">()</span> <span class="p">{</span>
	<span class="n">err</span> <span class="o">:=</span> <span class="n">sentry</span><span class="o">.</span><span class="n">Init</span><span class="p">(</span><span class="n">sentry</span><span class="o">.</span><span class="n">ClientOptions</span><span class="p">{</span>
		<span class="n">Dsn</span><span class="o">:</span> <span class="s">"___PUBLIC_DSN___"</span><span class="p">,</span>
	<span class="p">})</span>
	<span class="k">if</span> <span class="n">err</span> <span class="o">!=</span> <span class="no">nil</span> <span class="p">{</span>
		<span class="n">log</span><span class="o">.</span><span class="n">Fatalf</span><span class="p">(</span><span class="s">"sentry.Init: %s"</span><span class="p">,</span> <span class="n">err</span><span class="p">)</span>
	<span class="p">}</span>
	<span class="c">// Flush buffered events before the program terminates.</span>
	<span class="k">defer</span> <span class="n">sentry</span><span class="o">.</span><span class="n">Flush</span><span class="p">(</span><span class="m">2</span> <span class="o">*</span> <span class="n">time</span><span class="o">.</span><span class="n">Second</span><span class="p">)</span>

	<span class="n">sentry</span><span class="o">.</span><span class="n">CaptureMessage</span><span class="p">(</span><span class="s">"It works!"</span><span class="p">)</span>
<span class="p">}</span>
</code></pre></div></div>

      </div><div class="tab-pane" id="37a6259cc0c1dae299a7866489dff0bd-native" data-slug="native" role="tabpanel" aria-labelledby="37a6259cc0c1dae299a7866489dff0bd-native-tab">
        <p>The quickest way to verify Sentry in your Native application is by capturing a message:</p>

<div class="language-c highlighter-rouge"><div class="highlight"><pre class="highlight"><code><span class="n">sentry_capture_event</span><span class="p">(</span><span class="n">sentry_value_new_message_event</span><span class="p">(</span>
  <span class="cm">/*   level */</span> <span class="n">SENTRY_LEVEL_INFO</span><span class="p">,</span>
  <span class="cm">/*  logger */</span> <span class="s">"custom"</span><span class="p">,</span>
  <span class="cm">/* message */</span> <span class="s">"It works!"</span>
<span class="p">));</span>
</code></pre></div></div>

      </div><div class="tab-pane" id="37a6259cc0c1dae299a7866489dff0bd-node" data-slug="node" role="tabpanel" aria-labelledby="37a6259cc0c1dae299a7866489dff0bd-node-tab">
        <p>One way to verify your setup is by intentionally sending an event that breaks your application.</p>

<p>Calling an undefined function will throw an exception:</p>

<div class="language-js highlighter-rouge"><div class="highlight"><pre class="highlight"><code><span class="nx">myUndefinedFunction</span><span class="p">();</span>
</code></pre></div></div>

      </div><div class="tab-pane" id="37a6259cc0c1dae299a7866489dff0bd-php" data-slug="php" role="tabpanel" aria-labelledby="37a6259cc0c1dae299a7866489dff0bd-php-tab">
        <p>One way to verify your setup is by intentionally sending an event that breaks your application.</p>

<p>You can throw an exception in your PHP application:</p>

<div class="language-php highlighter-rouge"><div class="highlight"><pre class="highlight"><code><span class="k">throw</span> <span class="k">new</span> <span class="nx">Exception</span><span class="p">(</span><span class="s2">"My first Sentry error!"</span><span class="p">);</span>
</code></pre></div></div>

      </div><div class="tab-pane" id="37a6259cc0c1dae299a7866489dff0bd-python" data-slug="python" role="tabpanel" aria-labelledby="37a6259cc0c1dae299a7866489dff0bd-python-tab">
        <p>One way to verify your setup is by intentionally sending an event that breaks your application.</p>

<p>Raise an unhandled Python exception by inserting a divide by zero expression
into your application:</p>

<div class="language-py highlighter-rouge"><div class="highlight"><pre class="highlight"><code><span class="n">division_by_zero</span> <span class="o">=</span> <span class="mi">1</span> <span class="o">/</span> <span class="mi">0</span>
</code></pre></div></div>

      </div><div class="tab-pane" id="37a6259cc0c1dae299a7866489dff0bd-rust" data-slug="rust" role="tabpanel" aria-labelledby="37a6259cc0c1dae299a7866489dff0bd-rust-tab">
        <p>One way to verify your setup is by intentionally sending an event that breaks your application.</p>

<p>The quickest way to verify Sentry in your Rust application is to cause a panic:</p>

<div class="language-rust highlighter-rouge"><div class="highlight"><pre class="highlight"><code><span class="k">fn</span> <span class="nf">main</span><span class="p">()</span> <span class="p">{</span>
    <span class="k">let</span> <span class="mi">_</span><span class="n">guard</span> <span class="o">=</span> <span class="nn">sentry</span><span class="p">::</span><span class="nf">init</span><span class="p">(</span><span class="s">"___PUBLIC_DSN___"</span><span class="p">);</span>

    <span class="c">// Sentry will capture this</span>
    <span class="nd">panic!</span><span class="p">(</span><span class="s">"Everything is on fire!"</span><span class="p">);</span>
<span class="p">}</span>
</code></pre></div></div>

      </div></div>
</div>
