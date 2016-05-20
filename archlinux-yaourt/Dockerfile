FROM base/archlinux
RUN pacman -Syy archlinux-keyring --noconfirm && pacman -Syu --noconfirm && pacman-db-upgrade && trust extract-compat

RUN pacman -S --noconfirm --needed base-devel git subversion; \
groupadd -r makepkg; useradd -r -g makepkg makepkg; echo 'makepkg ALL=(ALL) NOPASSWD: ALL' > /etc/sudoers.d/makepkg;

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
