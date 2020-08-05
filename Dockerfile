FROM alpine:3

RUN apk --no-cache add git nodejs-npm
RUN npm install -g conventional-changelog

COPY LICENSE README.md /

COPY entrypoint.sh /entrypoint.sh

ENTRYPOINT ["/entrypoint.sh"]
