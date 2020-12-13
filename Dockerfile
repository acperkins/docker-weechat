FROM registry.opensuse.org/opensuse/tumbleweed:latest
RUN zypper install -y shadow weechat && \
	zypper clean -a && \
	useradd -c IRC -d /home/irc -m -U irc
WORKDIR /home/irc
COPY irc.conf .weechat/irc.conf
RUN chown -R irc: .
USER irc
CMD /usr/bin/weechat
