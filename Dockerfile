FROM nginx
LABEL version="1.0.0" description="Disponibilizando site com NGINX" maintainer="Ana Mendes<anajessica.mdo@gmail.com>"

COPY ./src/index.html /usr/share/nginx/html/
EXPOSE 80
WORKDIR /usr/share/nginx/html/
ENTRYPOINT ["/usr/sbin/nginx"]
CMD ["-g", "daemon off;"]