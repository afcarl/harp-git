FROM dockerimages/nave:latest
ENV REPO "git://github.com/dockerimages/testpage"
ENV NODE_ENV=production
RUN nave use stable npm install -g harp
RUN git clone $REPO /var/www
ADD init-harp-git /usr/bin/init-harp-git
RUN chmod +x /usr/bin/init-harp-git /usr/bin/nave
EXPOSE 80
ENTRYPOINT ["init-harp-git"]
