FROM python:3.6.8-alpine

WORKDIR /usr/src/app

COPY requirements.txt ./
RUN pip install --no-cache-dir -r requirements.txt

COPY /django ./
COPY start_python.py ./django
COPY Dockerfile ./django

WORKDIR /django

RUN  django-admin startproject django_discovery
WORKDIR /usr/src/app/django_discovery

CMD [ "python", "/usr/src/app/start_django.py" ]
