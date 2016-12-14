FROM nginx:alpine

COPY conf.d/default.template /etc/nginx/conf.d/default.template
CMD /bin/sh -c "envsubst '\$REDIRECT_TARGET' < /etc/nginx/conf.d/default.template > /etc/nginx/conf.d/default.conf  && cat /etc/nginx/conf.d/default.conf && nginx -g 'daemon off;'"
