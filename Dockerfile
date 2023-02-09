FROM debian:latest
RUN apt update -y && apt full-upgrade -y && apt autoremove -y && apt autoclean -y 
RUN apt install -y cmake make gcc 
RUN apt install -y git
WORKDIR "/tmp/"
RUN git clone https://github.com/vicgeralds/vitetris.git
WORKDIR "/tmp/vitetris/"
RUN ./configure && make && make install && make install-hiscores
WORKDIR "/root/"
RUN ["rm", "-rf", "/tmp/vitetris/"]
ENTRYPOINT ["tetris"]
