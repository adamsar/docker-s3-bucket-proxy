from danday74/nginx-lua

RUN apt-get update
RUN apt-get install -y gettext-base
COPY nginx.conf.tmpl /
COPY start.sh /

CMD ["sh", "/start.sh"]
