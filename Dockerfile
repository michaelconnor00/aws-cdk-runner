FROM ubuntu:20.04

RUN sudo apt-get update 
RUN sudo apt-get install nodejs npm python3 python3-pip
RUN npm install -g aws-cdk
RUN pip3 install aws-cdk.core

CMD ["cdk --help"]
