# docker-scrapy
Web Scraping Development Docker Container

## Uso
1. Contruir la imagen:
```
$ docker build --name scrapy .
```
2. Ejecutar un contenedor de splash (opcional):
```
$ docker run -p 8050:8050 scrapinghub/splash
```
3. Ejecutar el contenedor:
```
$ docker run -t -i --rm --name scrapy -v ./scrapy/:/scrapy/ scrapy
```
