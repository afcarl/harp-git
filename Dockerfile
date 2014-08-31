FROM dockerimages/nave:latest
ENV REPO "git://github.com/dockerimages/testpage"
ENV NODE_ENV production
EXPOSE 80
WORKDIR ["/var/www"]
RUN nave use stable npm install -g harp
RUN git clone $REPO /var/www
ADD init-harp-git /usr/bin/init-harp-git
RUN chmod +x /usr/bin/init-harp-git /usr/bin/nave
ENTRYPOINT ["init-harp-git"]
