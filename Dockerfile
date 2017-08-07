FROM ubuntu:latest

RUN apt-get update
# RUN apt-get install -y apt-utils
RUN apt-get install -y python-dev curl libxml2-dev libxslt-dev libffi-dev gcc musl-dev python-pip imagemagick

RUN pip install --upgrade pip
RUN pip install IPython lxml beautifulsoup4 requests scrapy scrapyjs Pillow

VOLUME ["/crawlers"]
WORKDIR /crawlers
ENTRYPOINT ["/bin/bash"]
