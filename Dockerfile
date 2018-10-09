FROM eosio/builder as builder
ARG branch=master
ARG symbol=SYS

# Clone eosio.cdt
WORKDIR /opt
RUN git clone -b ${branch} https://github.com/eosio/eosio.cdt --recursive

# Checkout eosio.cdt
WORKDIR /opt/eosio.cdt
RUN git submodule update --recursive

# Build eosio.cdt
RUN ./build.sh ${symbol}

# Install eosio.cdt
RUN ./install.sh

# Making eosio.cdt latest images
FROM ubuntu:18.04
RUN apt-get update && rm -rf /var/lib/apt/lists/*
COPY --from=builder /usr/local/eosio.cdt /usr/local/eosio.cdt
ENV PATH /usr/local/eosio.cdt/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin