FROM railgunaccelerator/archlinux
USER yaourt
RUN yaourt -S --noconfirm ocserv
USER root
CMD ["/usr/sbin/ocserv", "--foreground", "--config", "/etc/ocserv.config"]
