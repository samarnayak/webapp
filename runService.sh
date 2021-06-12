#!/bin/sh
if [ -n "$1" ]; then
    # user has specified command
    exec "$@"
else
    exec java -jar build/libs/user-registration-login-0.1.jar
fi
