#!/bin/bash

docker build -t caferrari/poloniexlendingbot:master -t caferrari/poloniexlendingbot:latest --no-cache .

docker push caferrari/poloniexlendingbot:master 
docker push caferrari/poloniexlendingbot:latest