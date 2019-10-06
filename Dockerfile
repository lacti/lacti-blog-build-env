FROM node:10-alpine

RUN npm i -g yarn
RUN apk add python g++ make

WORKDIR /opt/
COPY lacti-blog/package.json /opt/
RUN yarn

RUN apk del python g++ make
RUN apk add git

VOLUME /blog
ENV GH_PAGES_REPO ${GH_PAGES_REPO}
ENV GH_PAGES_BRANCH ${GH_PAGES_BRANCH}
ENV USER_EMAIL ${USER_EMAIL}
ENV USER_NAME ${USER_NAME}

WORKDIR /
COPY entrypoint.sh /
CMD /bin/sh /entrypoint.sh
