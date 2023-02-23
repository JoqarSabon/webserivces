From php:8.0.18-apache

WORKDIR /var/www/html

COPY ./src/ /var/www/html

# Install
RUN apt-get update && apt-get install -y\
      bzip2 \
      ca-certificates \
      dirmngr \
      dpkg-dev \
      gcc\
      gnupg \
      libapr1-dev \
      libaprutil1-dev \
      libbrotli-dev \
      libcurl4-openssl-dev \
      libjansson-dev \
      liblua5.2-dev \
      libnghttp2-dev \
      libpcre3-dev \
      libssl-dev \
      libxml2-dev \
      make \
      wget \
      zlib1g-dev \
      vim \
      gnupg \
      wget \

      && docker-php-ext-install\
      mysqli \
      ldap \
       && rm -rf /var/lib/apt/lists/*
