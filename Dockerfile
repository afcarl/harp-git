FROM dockerimages/nave:latest
ENV REPO "git://github.com/dockerimages/testpage"
RUN nave stable npm install -g harp
RUN git clone $REPO /var/www
CMD ["/init-harp-git"]
