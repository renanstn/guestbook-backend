# =============================================================================
# Base
# =============================================================================
FROM python:3.9 AS base

ENV PYTHONUNBUFFERED 1
ENV PYTHONDONTWRITEBYTECODE 1
RUN apt-get update && \
    pip install --upgrade pip && \
    pip install pipenv
WORKDIR /app
COPY Pipfile Pipfile.lock /app/

# =============================================================================
# Development
# =============================================================================
FROM base AS development
RUN pipenv install --system --deploy --dev
COPY . /app/
RUN chmod +x /app/scripts/*.sh
CMD [ "scripts/start.sh", "development" ]

# =============================================================================
# Production
# =============================================================================
FROM base AS production
RUN pipenv install --system --deploy
COPY . /app/
RUN chmod +x /app/scripts/*.sh
CMD [ "scripts/start.sh", "production" ]
