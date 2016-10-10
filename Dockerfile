
FROM slapi/base:latest

MAINTAINER SLAPI Devs

RUN apk add \
    # Packages
    nodejs="4.3.0-r0" &&\
    # Update NPM
    npm install -g npm &&\
    # NPM Packages
    npm install -g \
    request
    moment
    node-rest-client
    # Cleanup
    npm cache clean -f &&\
    rm /var/cache/apk/*
