FROM redis:6-alpine

COPY redis.conf .

# printing the current user to console
RUN var=$(whoami) && echo $var

# setting read/write perms for secrets file
RUN mkdir -p /etc/secrets
RUN chmod 644 /etc/secrets

# create a new user and change to that user
RUN useradd -ms /bin/bash newuser
USER newuser

# make secrets file owned by newuser
RUN chown newuser:newuser /etc/secrets

# print new user to console
RUN var=$(whoami) && echo $var

ENTRYPOINT ["redis-server", "./redis.conf"]
