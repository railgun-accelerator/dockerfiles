FROM railgunaccelerator/archlinux:devel

RUN git clone https://aur.archlinux.org/package-query.git; \
cd package-query; \
chown -R makepkg .; \
sudo -u makepkg makepkg -si --noconfirm; \
cd ..; \
git clone https://aur.archlinux.org/yaourt.git; \
cd yaourt; \
chown -R makepkg .; \
sudo -u makepkg makepkg -si --noconfirm; \
cd ..; \
rm -rf package-query yaourt
