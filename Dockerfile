FROM quay.io/aptible/nodejs:v4.2.x

RUN apt-get update && apt-get install -y python build-essential

ADD . /opt/nodejs
WORKDIR /opt/nodejs
RUN set -a && . /opt/nodejs/.aptible.env && npm install --production

ENV PORT 8125
EXPOSE 8125
EXPOSE 8126

CMD npm start
