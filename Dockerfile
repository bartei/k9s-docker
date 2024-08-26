FROM debian:bookworm

RUN apt update && \
    apt -yy upgrade && \
    apt -yy install wget && \
    apt-get clean && \
    cd /usr/bin && \
    wget https://github.com/derailed/k9s/releases/download/v0.32.5/k9s_Linux_amd64.tar.gz && \
    tar -xzvf k9s_Linux_amd64.tar.gz && \
    chmod a+x k9s

ENTRYPOINT  ["k9s"]
