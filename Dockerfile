FROM ubuntu:18.04

RUN apt-get update
RUN apt-get install -y unzip wget

RUN wget -q https://github.com/protocolbuffers/protobuf/releases/download/v3.9.0/protoc-3.9.0-linux-x86_64.zip -O protoc.zip && \
    unzip protoc.zip -d /usr && \
    rm protoc.zip

CMD [ "protoc" ]