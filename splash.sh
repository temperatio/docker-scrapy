#!/bin/sh
docker run --rm --net scrapynet --ip 172.30.0.3 -p 8050:8050 scrapinghub/splash
