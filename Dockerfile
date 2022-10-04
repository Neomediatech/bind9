FROM neomediatech/ubuntu-base:22.04
ENV BIND_VERSION=9.18 \
    SERVICE=bind9

LABEL maintainer="docker-dario@neomediatech.it" \ 
      org.label-schema.version=$BIND_VERSION \
      org.label-schema.vcs-type=Git \
      org.label-schema.vcs-url=https://github.com/Neomediatech/${SERVICE} \
      org.label-schema.maintainer=Neomediatech

RUN apt-get update && apt-get -y dist-upgrade && \
    apt-get install -y --no-install-recommends --no-install-suggests \
    bind9 dnsutils && \
    mkdir -p /run/named && chown bind /run/named && \
    rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/* /usr/share/man/??_* /usr/share/man/??

EXPOSE 53/tcp
EXPOSE 53/udp

CMD ["/usr/sbin/named", "-g", "-c", "/etc/bind/named.conf", "-u", "bind"]
