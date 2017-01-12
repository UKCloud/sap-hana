FROM ubuntu:16.04

RUN mkdir -p /src/sap_hana

COPY ./binary/hxe.tgz /src/sap_hana

WORKDIR /src/sap_hana

RUN tar -xzf hxe.tgz 

RUN apt-get update

RUN apt-get install -y apt-utils
RUN apt-get install -y libaio1
RUN apt-get install -y numactl 
RUN apt-get install -y libtool
RUN apt-get install -y libssl-dev
RUN apt-get install -y libcrack2


#RUN ./setup_hxe.sh
