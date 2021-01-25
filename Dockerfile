FROM fedora:latest
RUN dnf --refresh install -y weechat && \
	dnf clean all && \
	useradd -c IRC -d /home/irc -m -U irc
WORKDIR /home/irc
COPY --chown=irc irc.conf .weechat/irc.conf
USER irc
CMD /usr/bin/weechat
