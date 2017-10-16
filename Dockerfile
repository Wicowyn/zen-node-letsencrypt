FROM zencash/zen-node

MAINTAINER wicowyn@gmail.com

COPY root_certs/isrg-root-ocsp-x1.crt /usr/local/share/ca-certificates
COPY root_certs/isrgrootx1.crt /usr/local/share/ca-certificates
COPY root_certs/letsencryptauthorityx3.crt /usr/local/share/ca-certificates
COPY root_certs/lets-encrypt-x3-cross-signed.crt /usr/local/share/ca-certificates

RUN update-ca-certificates
