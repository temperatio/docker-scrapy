#!/bin/sh
docker run --net scrapynet --ip 172.30.0.4 --rm -v ~/portia_projects:/app/data/projects:rw -p 9001:9001 scrapinghub/portia
