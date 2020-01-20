#FROM alpine AS libheif
FROM ubuntu:18.04

RUN apt-get update && \
	apt-get install -y software-properties-common && \ 
	apt-add-repository 'ppa:strukturag/libheif' && \
	apt-get update && \
	apt-get install -y libheif-examples

WORKDIR app
COPY heic2jpg heic2jpg

CMD ./heic2jpg /sourcedir