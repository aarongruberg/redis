#!/bin/bash

# change owner of secrets file
sudo chown 1000:1000 /etc/secrets/test

# run the parameters from entrypoint
redis-server ./redis.conf
