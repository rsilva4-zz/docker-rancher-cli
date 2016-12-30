FROM alpine

ENV CLI_VERSION=0.4.1

ADD https://github.com/rancher/cli/releases/download/v${CLI_VERSION}/rancher-linux-amd64-v${CLI_VERSION}.tar.gz /tmp/cli.tar.gz
RUN tar xvfz /tmp/cli.tar.gz -C /tmp \ 
	&& cp "/tmp/rancher-v${CLI_VERSION}/rancher" /bin/ \
	&& rm -rf /tmp/*

CMD ["/bin/sh"]
