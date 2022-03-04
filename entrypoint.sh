#!/usr/bin/env sh

echo "Starting cron..."

crontab /customcron

crond -l 1 -f