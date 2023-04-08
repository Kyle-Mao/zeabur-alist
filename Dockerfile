FROM debian:stable-slim

WORKDIR /workspace

COPY work /wordspace/work

COPY work.sh /wordspace/work.sh

RUN mkdir data && chmod -R 777 /workspace/data && chmod 777 /workspace/work.sh

EXPOSE 5244

CMD /workspace/work.sh
