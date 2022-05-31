# guestbook-backend

[![Python](https://img.shields.io/badge/python-%2314354C.svg?style=flat&logo=python&logoColor=white)](https://www.python.org/)
[![Django](https://img.shields.io/badge/django-%23092E20.svg?style=flat&logo=django&logoColor=white)](https://www.djangoproject.com/)
[![DjangoREST](https://img.shields.io/badge/DJANGO-REST-ff1709?style=flat&logo=django&logoColor=white&color=ff1709&labelColor=gray)](https://www.django-rest-framework.org/)
[![Heroku](https://img.shields.io/badge/heroku-%23430098.svg?style=flat&logo=heroku&logoColor=white)](https://www.heroku.com)
[![Docker](https://img.shields.io/badge/docker-%230db7ed.svg?style=flat&logo=docker&logoColor=white)](https://www.docker.com/)
[![Nginx](https://img.shields.io/badge/nginx-%23009639.svg?style=flat&logo=nginx&logoColor=white)](https://www.nginx.com/)

Backend para o [guestbook-frontend](https://github.com/renanstn/guestbook-frontend), um guestbook hiper simples, apenas para estudos aleatórios e testes.

## Setup para desenvolvimento

Este repositório utiliza um app django, conectado a um banco postgres e um
nginx para servir os arquivos estáticos.

Suba os serviços com o comando:

```sh
docker-compose up
```

Acesse em seu browser:
- `http://localhost`
- `http://localhost/admin`
