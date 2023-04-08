FROM debian:stable-slim

WORKDIR /workspace

COPY amd64.tar.gz /wordspace/amd64.tar.gz

RUN tar -zxvf amd64.tar.gz

COPY work.sh /wordspace/work.sh

RUN mkdir data && chmod -R 777 /workspace/data && chmod 777 /workspace/work.sh

EXPOSE 5244

CMD /workspace/work.sh
