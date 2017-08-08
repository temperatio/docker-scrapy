# docker-scrapy
Web Scraping Development Docker Container

## Uso
1. Construir la imagen:
```
$ docker build --name scrapy .
```
2. Ejecutar un contenedor de splash (opcional):

2.1 Crear una red
```
$ docker network create --subnet=172.30.0.0/16 scrapynet
```
2.2 Ejecutar splash:
```
$ docker run --net scrapynet --ip 172.30.0.3 -p 8050:8050 scrapinghub/splash
```
3. Ejecutar el contenedor:
```
$ docker run -t -i --net scrapynet --ip 172.30.0.2 --rm --name scrapy -v ./scrapy/:/scrapy/ scrapy
```
