FROM python:3.9.0-alpine
LABEL maintainer="luisgs7 github.com/luisgs7"

COPY . /var/www
WORKDIR /var/www

RUN apk update 
RUN apk add zlib-dev jpeg-dev gcc musl-dev

RUN apk add python3-dev postgresql-dev

RUN pip install --upgrade pip
RUN pip install -r requirements.txt
#RUN python manage.py collectstatic --noinput Production
#RUN python manage.py migrate Development

ENTRYPOINT gunicorn --bind 0.0.0.0:8000 django_docker.wsgi
EXPOSE 8000