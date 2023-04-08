FROM debian:stable-slim

WORKDIR /workspace

COPY work /wordspace/

COPY work.sh /wordspace/

RUN mkdir data && chmod -R 777 /workspace/data && chmod 777 /workspace/work.sh

EXPOSE 5244

CMD /workspace/work.sh
