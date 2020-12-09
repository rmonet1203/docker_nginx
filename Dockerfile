# FROM nginx:alpine
# VOLUME /var/cache/nginx
# COPY public_html/index.html ./usr/share/nginx/html/index.html

##### Start nginx
# EXPOSE 80
# CMD ["nginx","-g","daemon off;"]


FROM nginx:alpine
# RUN apk add python3 python3-dev py3-pip build-base libressl-dev musl-dev libffi-dev
# RUN pip3 install pip --upgrade
# RUN pip3 install certbot-nginx
RUN apk add certbot certbot-nginx
RUN mkdir /etc/letsencrypt
COPY conf.d/default.conf /etc/nginx/conf.d/default.conf
# RUN certbot --nginx -d fapi.litekart.in
