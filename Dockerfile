FROM dockerimages/nave:latest
RUN nave stable npm install -g harp
RUN apt-get update && apt-get install -y git
CMD ["/init-harp-git"]
