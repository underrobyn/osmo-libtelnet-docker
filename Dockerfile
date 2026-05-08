FROM ubuntu:24.04

RUN apt-get update && \
    apt-get install -y automake build-essential cmake git libssl-dev libtool pkg-config

WORKDIR /opt/

RUN git clone https://gitea.osmocom.org/osmocom/libtelnet

RUN cd libtelnet && \
    autoreconf -i && \
    ./configure && \
    make -j$(nproc)

ENV PATH="/opt/libtelnet/util/:${PATH}"

CMD ["bash"]