FROM python:2.7-slim

RUN apt-get update \
    && apt-get install wget unzip -y \
    && wget https://github.com/BitBotFactory/poloniexlendingbot/archive/master.zip \
    && unzip master.zip \
    && apt-get purge wget unzip -y \
    && apt-get clean \
    && mkdir /config \
    && ln -s /config/default.cfg /poloniexlendingbot-master/default.cfg

COPY start.sh /poloniexlendingbot-master/start.sh

WORKDIR "/poloniexlendingbot-master/"

VOLUME ["/config", "/poloniexlendingbot-master/market_data"]

CMD ["/bin/bash", "start.sh"]