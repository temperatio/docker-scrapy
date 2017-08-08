FROM ubuntu:latest

RUN apt-get update
# RUN apt-get install -y apt-utils
RUN apt-get install -y python-dev curl libxml2-dev libxslt-dev libffi-dev gcc musl-dev python-pip imagemagick

RUN pip install --upgrade pip

ADD requirements.txt /tmp/requirements.txt
RUN pip install -r /tmp/requirements.txt

VOLUME ["/scrapy"]
WORKDIR /scrapy
ENTRYPOINT ["/bin/bash"]
