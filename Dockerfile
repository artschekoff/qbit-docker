FROM --platform=linux/amd64 ubuntu:24.04

ENV QBITX_HOME=/opt/qbitx

RUN apt-get update \
    && apt-get install -y libevent-2.1-7 \
    && apt-get update \
    && apt-get install -y libleveldb1d \
    && apt-get install -y libevent-pthreads-2.1-7t64 \
    && apt-get install -y libsqlite3-0 \
    && apt-get install -y iputils-ping \
    && rm -rf /var/lib/apt/lists/*

WORKDIR $QBITX_HOME

COPY  qbitx.conf bin/qbitx-cli bin/qbitx ./
RUN chmod +x qbitx
RUN chmod +x qbitx-cli

COPY docker-entrypoint.sh /usr/local/bin/docker-entrypoint.sh
RUN chmod +x /usr/local/bin/docker-entrypoint.sh

EXPOSE 8334 8332

ENTRYPOINT ["/usr/local/bin/docker-entrypoint.sh"]
