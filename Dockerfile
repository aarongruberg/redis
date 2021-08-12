FROM redis:6-alpine

COPY redis.conf .

# Commenting out entrypoint while I test start.sh in Docker Command
# ENTRYPOINT ["redis-server", "./redis.conf"]
