FROM php:7-apache
LABEL maintainer "Kyle Lucy <kmlucy@gmail.com>"

RUN apt-get update && apt-get install -y git && \
	mkdir /var/www/html/logarr && \
	git clone https://github.com/seanvree/logarr.git /var/www/html/logarr && \
	apt-get purge -y git && \
	apt-get autoremove --purge -y && \
	apt-get clean && \
	rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/ /var/www/html/logarr/.git/
