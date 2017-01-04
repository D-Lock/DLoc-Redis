FROM redis:3.0

RUN apt-get update
RUN apt-get install -y \
  curl \
  python3 \
  python3-pip \
  && apt-get clean && rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*

RUN pip3 install boto3

COPY bin/ /usr/bin
COPY start-server.sh /usr/bin/start-server.sh

COPY redis.conf /usr/local/etc/redis/redis.conf
CMD [ "bash", "/usr/bin/start-server.sh" ]