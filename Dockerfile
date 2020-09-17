FROM alpine:3

RUN apk --no-cache add nodejs nodejs-npm python3 py3-pip
RUN npm install -g aws-cdk
RUN pip3 install aws-cdk.core

# COPY entrypoint.sh /entrypoint.sh
# RUN ["chmod", "+x", "/entrypoint.sh"]
# ENTRYPOINT ["/entrypoint.sh"]
