FROM alpine:3.8

RUN apk --update add sudo \
 && apk --update add python py-pip openssl ca-certificates bash \
 && apk --update add --virtual build-dependencies python-dev libffi-dev openssl-dev build-base \
 && pip install --upgrade pip cffi \
 && pip install ansible==2.7.0 jinja2==2.10 jmespath\
 && apk del build-dependencies \
 && rm -rf /var/cache/apk/*
