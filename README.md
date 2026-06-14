```bash
sudo emerge --ask app-eselect/eselect-repository
sudo eselect repository add lumoria git https://github.com/rysas/lumoria-gentoo.git
sudo emaint sync --repo lumoria
sudo emerge --ask games-util/lumoria
```
