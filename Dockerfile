FROM debian:stable-slim

WORKDIR /

ADD work .work

ADD work.sh .work.sh

RUN pwd && ls -l /

RUN mkdir data && chmod -R 777 /workspace/data 

RUN chmod 777 /workspace/work.sh

EXPOSE 5244

CMD /workspace/work.sh
