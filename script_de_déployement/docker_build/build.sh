docker build -t resolveur ../../DNS/resolveur
docker build -t soa-local ../../DNS/authoritative_only_server/local/.
docker build -t soa-public ../../DNS/authoritative_only_server/public/.
docker build -t dnsutils ../../hosts/ubuntu_dnsutils/.
