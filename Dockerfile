FROM alpine:3

RUN apk --no-cache add nodejs nodejs-npm python3 py3-pip
RUN npm install -g aws-cdk
RUN pip3 install aws-cdk.core

COPY entrypoint.sh /entrypoint.sh
RUN ["chmod", "+x", "/entrypoint.sh"]
RUN ["/entrypoint.sh"]

# FROM ubuntu:20.04

# ENV DEBIAN_FRONTEND=noninteractive

# RUN apt update && apt install -y nodejs npm python3 python3-pip
# RUN npm install -g aws-cdk
# RUN pip3 install aws-cdk.core

# CMD ["cdk --help"]
