FROM ubuntu:latest
RUN apt-get update && apt-get install -y apache2
COPY . /var/www/html/
WORKDIR /var/www/html
EXPOSE 80
CMD ["bash", "-c", "service apache2 start && tail -f /dev/null"]
