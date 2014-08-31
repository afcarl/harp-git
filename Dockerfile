FROM dockerimages/nave:latest
ENV REPO "git://github.com/dockerimages/testpage"
RUN nave stable npm install -g harp
RUN git clone $REPO /var/www
ADD init-harp-git /usr/bin/init-harp-git
ENTRYPOINT [""]
CMD ["init-harp-git"]
