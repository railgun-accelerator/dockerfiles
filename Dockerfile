FROM base/archlinux
RUN pacman -Syy archlinux-keyring --noconfirm && pacman -Syu --noconfirm && pacman-db-upgrade && trust extract-compat
