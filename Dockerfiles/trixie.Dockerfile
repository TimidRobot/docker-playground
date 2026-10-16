# https://docs.docker.com/engine/reference/builder/

# https://hub.docker.com/_/debian
FROM debian:trixie

# https://docs.docker.com/build/building/best-practices/#apt-get
# - Resynchronize the package index, update packages, install packages,
#   and partial clean-up
RUN DEBIAN_FRONTEND=noninteractive apt-get update \
        --no-allow-insecure-repositories --quiet \
    && DEBIAN_FRONTEND=noninteractive apt-get dist-upgrade \
        --no-install-recommends --no-install-suggests --quiet --yes \
    && DEBIAN_FRONTEND=noninteractive apt-get install \
        --no-install-recommends --no-install-suggests --quiet --yes \
        curl \
        httpie \
        less \
        man-db \
        manpages \
        ripgrep \
        rsync \
        tree \
        unzip \
        vim \
        wget \
    && DEBIAN_FRONTEND=noninteractive apt-get clean --quiet

COPY sleeping /usr/local/bin/sleeping
RUN chmod 0755 /usr/local/bin/sleeping
CMD [ "/usr/local/bin/sleeping"]
