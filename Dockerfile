FROM redis:6-alpine

COPY redis.conf .

# printing the current user to console
RUN var=$(whoami) && echo $var

ENTRYPOINT ["redis-server", "./redis.conf"]
