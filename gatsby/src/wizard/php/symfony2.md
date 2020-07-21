---
name: Symfony
doc_link: https://docs.sentry.io/platforms/php/symfony/
support_level: production
type: framework
---
<div class="alert alert-warning" role="alert"><h5 class="no_toc">New version</h5><div class="alert-body content-flush-bottom"> <p>This documentation refers to the v3.0 of the bundle. This version supports the newest <a href="/platforms/php/">Unified API client</a>.</p>  <p>You can continue to use <a href="/clients/php/integrations/#symfony-2">the previous versions</a> if you’re still using Symfony 2.</p> </div>
</div>


## Installation

Install the `sentry/sentry-symfony` package:

```bash
$ composer require sentry/sentry-symfony
```

### Enabling the bundle

<div class="alert" role="alert"><div class="alert-body content-flush-bottom"><p>If you’re using the Symfony Flex plugin, you can skip this step; the Flex recipe will automatically enable the bundle.</p> </div>
</div>

Enable the bundle in `app/AppKernel.php`:

```php
<?php
class AppKernel extends Kernel
{
    public function registerBundles()
    {
        $bundles = array(
            // ...

            new Sentry\SentryBundle\SentryBundle(),
        );

        // ...
    }

    // ...
}
```

### Setting up the DSN
Add your DSN to `app/config/config.yml`:

```yaml
sentry:
    dsn: "___PUBLIC_DSN___"
```

If you're using the Symfony Flex plugin, you'll find this file already created for you; it will suggest using an environment variable to inject the DSN value securely.
