FROM debian:stable
RUN apt-get update && \
	apt-get install -y weechat && \
	apt-get clean && \
	rm -fr /var/lib/apt/lists/* && \
	useradd -c User -d /home/user -m -s /bin/bash -U user
WORKDIR /home/user
COPY --chown=user irc.conf .weechat/irc.conf
USER user
CMD /usr/bin/weechat
