FROM alpine:3.1
#RUN  echo "http://nl.alpinelinux.org/alpine/edge/testing">>/etc/apk/repositories
RUN apk update
RUN apk add python-dev curl libxml2-dev libxslt-dev libffi-dev gcc musl-dev libgcc openssl-dev py-pip

RUN pip install IPython==5.0 --user
RUN pip install lxml
RUN pip install beautifulsoup4 requests
RUN pip install scrapy
RUN pip install scrapyjs
#CMD ["sh"]
VOLUME ["/crawlers"]
WORKDIR /crawlers
ENTRYPOINT ["/usr/bin/scrapy"]
