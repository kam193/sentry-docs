---
name: Laravel
doc_link: https://docs.sentry.io/platforms/php/laravel/
support_level: production
type: framework
---
<p>Install the <code class="highlighter-rouge">sentry/sentry-laravel</code> package:</p>

<div class="language-bash highlighter-rouge"><div class="highlight"><pre class="highlight"><code><span class="nv">$ </span>composer require sentry/sentry-laravel:1.8.0
</code></pre></div></div>

<p>If you’re on Laravel 5.5 or later the package will be auto-discovered. Otherwise you will need to manually configure it in your <code class="highlighter-rouge">config/app.php</code>.</p>



<p>Add Sentry reporting to <code class="highlighter-rouge">App/Exceptions/Handler.php</code>.</p>

<p><strong>For Laravel 7.x and later:</strong></p>

<div class="language-php highlighter-rouge"><div class="highlight"><pre class="highlight"><code><span class="k">public</span> <span class="k">function</span> <span class="nf">report</span><span class="p">(</span><span class="nx">Throwable</span> <span class="nv">$exception</span><span class="p">)</span>
<span class="p">{</span>
    <span class="k">if</span> <span class="p">(</span><span class="nx">app</span><span class="p">()</span><span class="o">-&gt;</span><span class="na">bound</span><span class="p">(</span><span class="s1">'sentry'</span><span class="p">)</span> <span class="o">&amp;&amp;</span> <span class="nv">$this</span><span class="o">-&gt;</span><span class="na">shouldReport</span><span class="p">(</span><span class="nv">$exception</span><span class="p">))</span> <span class="p">{</span>
        <span class="nx">app</span><span class="p">(</span><span class="s1">'sentry'</span><span class="p">)</span><span class="o">-&gt;</span><span class="na">captureException</span><span class="p">(</span><span class="nv">$exception</span><span class="p">);</span>
    <span class="p">}</span>

    <span class="k">parent</span><span class="o">::</span><span class="na">report</span><span class="p">(</span><span class="nv">$exception</span><span class="p">);</span>
<span class="p">}</span>
</code></pre></div></div>

<p><strong>For Laravel 5.x and 6.x:</strong></p>

<div class="language-php highlighter-rouge"><div class="highlight"><pre class="highlight"><code><span class="k">public</span> <span class="k">function</span> <span class="nf">report</span><span class="p">(</span><span class="nx">Exception</span> <span class="nv">$exception</span><span class="p">)</span>
<span class="p">{</span>
    <span class="k">if</span> <span class="p">(</span><span class="nx">app</span><span class="p">()</span><span class="o">-&gt;</span><span class="na">bound</span><span class="p">(</span><span class="s1">'sentry'</span><span class="p">)</span> <span class="o">&amp;&amp;</span> <span class="nv">$this</span><span class="o">-&gt;</span><span class="na">shouldReport</span><span class="p">(</span><span class="nv">$exception</span><span class="p">))</span> <span class="p">{</span>
        <span class="nx">app</span><span class="p">(</span><span class="s1">'sentry'</span><span class="p">)</span><span class="o">-&gt;</span><span class="na">captureException</span><span class="p">(</span><span class="nv">$exception</span><span class="p">);</span>
    <span class="p">}</span>

    <span class="k">parent</span><span class="o">::</span><span class="na">report</span><span class="p">(</span><span class="nv">$exception</span><span class="p">);</span>
<span class="p">}</span>
</code></pre></div></div>

<p>Create the Sentry configuration file (<code class="highlighter-rouge">config/sentry.php</code>) with this command:</p>

<div class="language-sh highlighter-rouge"><div class="highlight"><pre class="highlight"><code><span class="nv">$ </span>php artisan vendor:publish <span class="nt">--provider</span><span class="o">=</span><span class="s2">"Sentry</span><span class="se">\L</span><span class="s2">aravel</span><span class="se">\S</span><span class="s2">erviceProvider"</span>
</code></pre></div></div>

<p>Add your DSN to <code class="highlighter-rouge">.env</code>:</p>

<div class="language-sh highlighter-rouge"><div class="highlight"><pre class="highlight"><code><span class="nv">SENTRY_LARAVEL_DSN</span><span class="o">=</span>___PUBLIC_DSN___
</code></pre></div></div>
<p>You can easily verify that Sentry is capturing errors in your Laravel application by creating a debug route that will throw an exception:</p>

<div class="language-php highlighter-rouge"><div class="highlight"><pre class="highlight"><code><span class="nx">Route</span><span class="o">::</span><span class="na">get</span><span class="p">(</span><span class="s1">'/debug-sentry'</span><span class="p">,</span> <span class="k">function</span> <span class="p">()</span> <span class="p">{</span>
    <span class="k">throw</span> <span class="k">new</span> <span class="nx">Exception</span><span class="p">(</span><span class="s1">'My first Sentry error!'</span><span class="p">);</span>
<span class="p">});</span>
</code></pre></div></div>

<p>Visiting this route will trigger an exception that will be captured by Sentry.</p>
