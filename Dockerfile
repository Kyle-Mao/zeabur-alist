FROM debian:stable-slim

WORKDIR /alist_workspace

RUN apt update && apt install wget -y && wget https://github.co/alist-org/alist/releases/download/v3.15.1/alist-linux-amd64.tar.gz && tar -zxvf alist-linux-amd64.tar.gz

COPY alist.sh /alist_wordspace/alist.sh

RUN mkdir data && chmod -R 777 /alist_workspace/data && chmod 777 /alist_workspace/alist.sh

EXPOSE 5244

CMD /alist_workspace/alist.sh
