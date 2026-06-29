FROM nginx:alpine

COPY index.html /usr/share/nginx/html/index.html

RUN printf 'server {\n    listen 3000;\n    root /usr/share/nginx/html;\n    index index.html;\n}\n' \
    > /etc/nginx/conf.d/default.conf

EXPOSE 3000

CMD ["nginx", "-g", "daemon off;"]
