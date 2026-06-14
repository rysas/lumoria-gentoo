```bash
emerge --ask app-eselect/eselect-repository
eselect repository add lumoria git https://github.com/rysas/lumoria-gentoo.git
emaint sync --repo lumoria
emerge --ask games-util/lumoria
```
