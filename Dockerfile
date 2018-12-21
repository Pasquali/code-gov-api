FROM node:9.11.1-onbuild

ARG NEW_RELIC_KEY
ENV NEW_RELIC_KEY=${NEW_RELIC_KEY}

ARG GITHUB_API_KEY
ENV GITHUB_API_KEY=${GITHUB_API_KEY}

ARG NODE_ENV=dev
ENV NODE_ENV=${NODE_ENV}

ARG ES_HOST=localhost
ENV ES_HOST=${ES_HOST}

ARG ES_PORT=9200
ENV ES_PORT=${ES_PORT}

ARG ES_USER=root
ENV ES_USER=${ES_USER}

ARG ES_PASSWORD
ENV ES_PASSWORD=${ES_PASSWORD}

VOLUME "/usr/src/app"

EXPOSE 3000
