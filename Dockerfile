FROM railgunaccelerator/archlinux

RUN pacman -S --noconfirm --needed base-devel git subversion; \
groupadd -r makepkg; useradd -r -g makepkg makepkg; echo 'makepkg ALL=(ALL) NOPASSWD: ALL' > /etc/sudoers.d/makepkg;

