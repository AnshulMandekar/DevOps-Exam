FROM alpine:latest
RUN mkdir -p /www && echo "Smart Hub Online" > /www/index.html
EXPOSE 80
CMD ["sh", "-c", "echo 'Smart Hub Online' && httpd -f -p 80 -h /www"]
