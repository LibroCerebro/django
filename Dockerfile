FROM python:3.6.8-alpine

WORKDIR /usr/src/app

COPY requirements.txt ./
RUN pip install --no-cache-dir -r requirements.txt

COPY . .

RUN mkdir django_discovery
WORKDIR /django_discovery

RUN  django-admin startproject mysite

CMD [ "python3", "./start_django.py" ]
