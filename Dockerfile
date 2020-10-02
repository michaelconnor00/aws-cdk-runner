FROM alpine:3

RUN apk update && apk --no-cache add \
  nodejs \
  nodejs-npm \
  python3 \
  python3-dev \
  py3-pip \
  gcc \
  g++ \
  make \
  libffi-dev \
  openssl-dev \
  zip

RUN npm install -g aws-cdk@1.65.0
RUN pip3 install aws-cdk.core
