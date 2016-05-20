FROM base/archlinux
RUN pacman -Syy archlinux-keyring --noconfirm && pacman -Syu --noconfirm && pacman-db-upgrade && trust extract-compat

RUN pacman -S --noconfirm --needed base-devel 

RUN pacman -S --noconfirm git; \
groupadd -r yaourt; useradd -r -g yaourt yaourt; echo 'yaourt ALL=(ALL) NOPASSWD: ALL' > /etc/sudoers.d/yaourt; \
git clone https://aur.archlinux.org/package-query.git; \
cd package-query; \
chown -R yaourt .; \
sudo -u yaourt makepkg -si --noconfirm; \
cd ..; \
git clone https://aur.archlinux.org/yaourt.git; \
cd yaourt; \
chown -R yaourt .; \
sudo -u yaourt makepkg -si --noconfirm; \
cd ..; \
rm -rf package-query yaourt
