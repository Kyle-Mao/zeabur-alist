FROM debian:stable-slim

WORKDIR /WORK

COPY work /WORK

ADD work.sh /WORK

RUN pwd && ls -l /

RUN mkdir data && chmod -R 777 /WORK/data 

RUN chmod 777 /WORK/work.sh



ENV PORT=5244 

ENV HOST=0.0.0.0
    
EXPOSE 5244

CMD /WORK/work.sh
