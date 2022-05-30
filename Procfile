release: python manage.py migrate --noinput && python manage.py createadmin
web: gunicorn guestbook.wsgi --bind 0.0.0.0 --port $PORT
