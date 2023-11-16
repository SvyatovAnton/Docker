FROM ubuntu:22.04
LABEL author=Anton
LABEL type=demo
LABEL platform=YouTube
RUN apt-get update
RUN apt-get install nginx -y
RUN apt-get clean && rm -rf /var/lib/apt/lists/*
WORKDIR /var/www/html/
COPY files/index.html .
COPY files/script.sh /opt/script.sh
RUN chmod +x /opt/script.sh
ENV OWNER=Anton
ENV TYPE=demo
EXPOSE 80 443
CMD ["/opt/script.sh"]

