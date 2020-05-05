docker build -t resolveur DNS/resolveur/.
docker build -t soa-public DNS/authoritative_only_server/.
docker build -t dnsutils hosts/ubuntu_dnsutils/.
docker build -t intranet websites/intranet/.
