FROM debian:latest

COPY entrypoint.sh /

WORKDIR /app

EXPOSE 80

RUN chmod +x /entrypoint.sh

ENTRYPOINT ["/entrypoint.sh"]

CMD ["apache2ctl", "-D", "FOREGROUND"]
