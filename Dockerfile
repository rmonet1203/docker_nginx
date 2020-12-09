FROM nginx:alpine
VOLUME /var/cache/nginx
COPY public_html/index.html ./usr/share/nginx/html/index.html
##### Start nginx
# EXPOSE 80
# CMD ["nginx","-g","daemon off;"]
