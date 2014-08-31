harp-git
========

A Container that fetches a git repo and runs harp on it so you can update the content of the container via git


# RUN

    docker run -d --restart="always" --name="HTTP_BLOG_DSPEED_EU" --env HAPROXY_DOMAIN=blog.dspeed.eu --env REPO=https://github.com/DirektSPEED/blog_dspeed"]  dockerimages/harp-git
