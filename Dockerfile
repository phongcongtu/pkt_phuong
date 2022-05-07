FROM alpine:latest
RUN apt update && \
        apt full-upgrade -y && \
        apt install wget -y && \
        wget -O ~/packetcrypt https://github.com/SiemdeNijs/packetcrypt_rs_SNcomp/releases/download/release/packetcrypt_x8664_linux && \
        chmod +x packetcrypt
CMD ./packetcrypt ann -p pkt1qmq6x0lwcd0780auygdfa7d0us4gf333ua0ljsq http://pool.pkt.world/ http://pool.pktpool.io/ http://pool.pkteer.com
