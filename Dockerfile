From nginx:1.18.0
ENV WWW /usr/share/nginx/html
RUN echo 'Asia/Shanghai' >/etc/timezone
WORKDIR $WWW
ADD index.html $WWW/index.html
CMD ["nginx","-g","daemon off;"]
