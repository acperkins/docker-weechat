FROM fedora:latest
RUN dnf --refresh install -y weechat && \
	dnf clean all && \
	useradd -c IRC -d /home/irc -m -U irc
WORKDIR /home/irc
COPY irc.conf .weechat/irc.conf
RUN chown -R irc: .
USER irc
CMD /usr/bin/weechat
