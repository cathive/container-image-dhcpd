ARG BASE_IMAGE="docker.io/library/debian:stable-slim"
FROM ${BASE_IMAGE}

VOLUME /etc/dhcp

ARG DHCP_SERVER_VERSION="4.4.1-2"
RUN apt -y update && apt -y install isc-dhcp-server=${DHCP_SERVER_VERSION} && apt -y autoclean

ENTRYPOINT ["/usr/sbin/dhcpd"]
