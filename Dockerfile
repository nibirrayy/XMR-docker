FROM ubuntu

RUN             apt-get update -qq

RUN             apt-get install -qqy curl
RUN		curl https://raw.githubusercontent.com/deepwn/deepMiner/master/install.sh > install.sh
RUN		curl -o- https://raw.githubusercontent.com/creationix/nvm/v0.33.1/install.sh | bash
RUN		apt install -qqy nodejs
RUN		apt install -qqy unzip
RUN   apt install -qqy wget
RUN		wget https://codeload.github.com/bradoyler/xmr-miner/zip/master
RUN   unzip master
RUN		cd xmr-miner-master && npm install
ENTRYPOINT npm run dev
