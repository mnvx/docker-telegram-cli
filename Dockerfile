FROM ubuntu:16.04
MAINTAINER Nikolay Matiushenkov <mnvx@yandex.ru>

RUN mkdir /work && \
    mkdir /work/tg

# Set correct environment variables
ENV HOME /work
ENV DEBIAN_FRONTEND noninteractive

# Install required packages
RUN apt-get update && apt-get install -y \
        python3 \
        python3-pip \
        supervisor \
		sudo \
		git \
		mc

RUN pip3 install --upgrade pip

RUN apt-get install -y software-properties-common && \
    add-apt-repository ppa:ali.r/telegram-cli && \
    apt-get update && \
    apt-get install -y telegram-cli

RUN apt-get -yq autoremove --purge && \
	apt-get clean && \
	rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*

CMD ["bash"]
