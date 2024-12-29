FROM ubuntu

RUN apt update && \
    apt install -y nodejs npm && \
    # ln -s /usr/bin/nodejs /usr/bin/node && \ its already there
    npm install -g http-server && \
    mkdir -p /usr/apps/hello-docker
COPY index.html /usr/apps/hello-docker/index.html

WORKDIR /usr/apps/hello-docker

CMD [ "http-server", "-s" ]

LABEL maintainer="Aman"