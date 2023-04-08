FROM debian:stable-slim

WORKDIR /alist_workspace

COPY alist.sh /alist_wordspace/alist.sh

RUN mkdir data && chmod -R 777 /alist_workspace/data && chmod 777 /alist_workspace/alist.sh

EXPOSE 5244

CMD /alist_workspace/alist.sh
