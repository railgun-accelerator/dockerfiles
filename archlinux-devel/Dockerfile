FROM base/archlinux
RUN pacman -Syy archlinux-keyring --noconfirm && pacman -Syu --noconfirm && pacman-db-upgrade && trust extract-compat

RUN pacman -S --noconfirm --needed base-devel git subversion; \
groupadd -r makepkg; useradd -r -g makepkg makepkg; echo 'makepkg ALL=(ALL) NOPASSWD: ALL' > /etc/sudoers.d/makepkg;

