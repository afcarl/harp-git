FROM dockerimages/nave:latest
ENV REPO "git://github.com/dockerimages/testpage"
RUN nave stable npm install -g harp
RUN clone $REPO /var/www
RUN apt-get update && apt-get install -y git
CMD ["/init-harp-git"]
