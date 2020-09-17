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
  openssl-dev

RUN npm install -g aws-cdk
RUN pip3 install aws-cdk.core

# COPY entrypoint.sh /entrypoint.sh
# RUN ["chmod", "+x", "/entrypoint.sh"]
# ENTRYPOINT ["/entrypoint.sh"]
