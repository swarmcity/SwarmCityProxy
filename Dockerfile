FROM nginx:stable

RUN apt-get -y update && \
    apt-get install -y \
    openssl curl


RUN mkdir -p /data/nginx/cache /etc/nginx/sites-enabled/ /etc/nginx/sites-available/
RUN ln -s /etc/nginx/sites-available/site /etc/nginx/sites-enabled/
RUN openssl dhparam -out /etc/ssl/certs/dhparam.pem 2048
RUN chown -R www-data:www-data /data

COPY nginx.conf /etc/nginx/nginx.conf
COPY ssl-params.conf /etc/nginx/snippets/ssl-params.conf
COPY site /etc/nginx/sites-available/site
COPY startup startup

VOLUME ["/etc/nginx/ssl"]

ENTRYPOINT /startup
EXPOSE 80 443
