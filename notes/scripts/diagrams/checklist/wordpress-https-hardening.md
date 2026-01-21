# WordPress HTTPS Hardening Checklist

This checklist helps secure WordPress sites by enforcing HTTPS and SSL best practices.

## 🔧 Setup
- [ ] Install SSL certificate (Let’s Encrypt or paid).
- [ ] Update site URL to use `https://` in WordPress settings.
- [ ] Force HTTPS in `.htaccess` or server config.
- [ ] Redirect all HTTP traffic to HTTPS.
- [ ] Enable HSTS headers.

## 🔐 wp-config.php Tweaks
```php
define('FORCE_SSL_ADMIN', true);
