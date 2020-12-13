FROM registry.opensuse.org/opensuse/tumbleweed:latest
RUN zypper install -y weechat && \
	zypper clean -a
WORKDIR /root
COPY irc.conf .weechat/irc.conf
CMD /usr/bin/weechat
