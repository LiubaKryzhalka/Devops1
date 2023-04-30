FROM ubuntu:latest

RUN apt-get update && apt-get -y install mailutils curl

COPY ./check_web_server.sh .

RUN chmod +x ./check_web_server.sh

CMD while true; do ./check_web_server.sh; sleep 30; done
