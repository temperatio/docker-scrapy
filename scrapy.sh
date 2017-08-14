#!/bin/sh
docker run -t -i --rm --net scrapynet --ip 172.30.0.2 -v ~/dev/docker/docker-scrapy/scrapy/:/scrapy/ scrapy
