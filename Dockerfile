FROM dockerimages/nave:latest
ENV DOCKER_BUILD "docker build -t dockerimages/blog_dspeed git://github.com/dockerimages/harp-git"
ENV DOCKER_RUN "docker run -d --restart=always --name=BACKEND_BLOGDSPEED --env HAPROXY_DOMAIN=blog.dspeed.eu --env REPO=https://github.com/DirektSPEED/blog_dspeed  dockerimages/harp-git"
ENV REPO "git://github.com/dockerimages/testpage"
ENV NODE_ENV production
EXPOSE 80
WORKDIR ["/var/www"]
RUN nave use stable npm install -g harp
RUN git clone $REPO /var/www
ADD init-harp-git /usr/bin/init-harp-git
RUN chmod +x /usr/bin/init-harp-git /usr/bin/nave
ENTRYPOINT ["init-harp-git"]
