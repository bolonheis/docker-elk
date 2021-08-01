FROM ubuntu

# Install packages
RUN apt-get update && \
apt-get install -y curl

COPY docker-entrypoint.sh /
COPY index_mapping.json /

ENTRYPOINT ["/docker-entrypoint.sh"]
