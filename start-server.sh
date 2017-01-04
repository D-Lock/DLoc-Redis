#!/bin/sh

# Ensure there is a redis password if specified
if [ -z "$REDIS_PASSWORD" ] 
then
	redis-server /usr/local/etc/redis/redis.conf
else
	redis-server /usr/local/etc/redis/redis.conf --requirepass $REDIS_PASSWORD
fi