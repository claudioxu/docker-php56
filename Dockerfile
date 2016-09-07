FROM php56ubhttpd:v2

RUN apt-get install -y supervisor
RUN mkdir -p /var/log/supervisor
ADD supervisord.conf /etc/supervisord.conf

RUN a2enmod rewrite
RUN a2enmod headers

EXPOSE 80
EXPOSE 443

CMD ["/usr/bin/supervisord"]
