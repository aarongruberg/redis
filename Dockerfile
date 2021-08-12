FROM redis:6-alpine

COPY redis.conf .

# printing the current user to console
RUN var=$(whoami) && echo $var

# make secrets file owned by newuser
RUN chown 1000:1000 /etc/secrets/test

# print new user to console
RUN var=$(whoami) && echo $var

ENTRYPOINT ["redis-server", "./redis.conf"]
