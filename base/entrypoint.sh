#!/bin/sh
set -e
source /etc/profile

/cache.sh

exec "$@"