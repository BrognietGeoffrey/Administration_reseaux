FROM ubuntu:bionic

RUN apt-get update \
  && apt-get install -y \
  bind9 \
  bind9utils \
  bind9-doc
RUN apt-get install dnsutils -y
RUN apt-get update && apt-get install -y iputils-ping

# Enable IPv4
RUN sed -i 's/OPTIONS=.*/OPTIONS="-4 -u bind"/' /etc/default/bind9

# Copy configuration files
COPY named.conf.options /etc/bind/
COPY named.conf.local /etc/bind/
COPY db.wt3 /etc/bind/zones/

# Run eternal loop
CMD ["/bin/bash", "-c", "while :; do sleep 10; done"]
