FROM debian:stable-slim

WORKDIR /WORK

COPY work /WORK

ADD work.sh /WORK

RUN pwd && ls -l /

RUN mkdir data && chmod -R 777 /WORK/data 

RUN chmod 777 /WORK/work.sh

EXPOSE 5244

CMD /WORK/work.sh
