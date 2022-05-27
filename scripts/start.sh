#!/bin/bash

if [ $# -eq 0 ]; then
    echo "Usage: start.sh [ENVIRONMENT](development/production)"
    exit 1
fi

python manage.py collectstatic --noinput
python manage.py makemigrations  --noinput
python manage.py migrate  --noinput
python manage.py createadmin

ENVIRONMENT=$1

if [ "$ENVIRONMENT" = "development" ]; then
    gunicorn \
        --bind 0.0.0.0:8000 \
        guestbook.wsgi \
        --reload

elif [ "$ENVIRONMENT" = "production" ]; then
    gunicorn \
        --bind 0.0.0.0:8000 \
        guestbook.wsgi
fi
