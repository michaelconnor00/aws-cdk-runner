FROM ubuntu:20.04

RUN apt update && apt install nodejs npm python3 python3-pip
RUN npm install -g aws-cdk
RUN pip3 install aws-cdk.core

CMD ["cdk --help"]
