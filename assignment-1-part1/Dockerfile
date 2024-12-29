FROM ubuntu:22.04
RUN apt update && \
    apt install -y nginx

RUN mkdir -p /var/www/html

COPY nginx.conf /etc/nginx/nginx.conf
COPY entrypoint.sh /entrypoint.sh
COPY index.sh index.sh

COPY index.html /var/www/html/index.html
COPY index.aman.html /var/www/html/index.aman.html
COPY index.defender.html /var/www/html/index.defender.html
COPY index.error.html /var/www/html/index.error.html

RUN chmod +x /index.sh /entrypoint.sh
RUN apt install -y tzdata 
RUN ln -sf /usr/share/zoneinfo/Asia/Kolkata /etc/localtime
RUN echo "Asia/Kolkata" > /etc/timezone

EXPOSE 80
# Run Nginx in the foreground
CMD ["/entrypoint.sh"]