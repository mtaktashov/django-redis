# syntax=docker/dockerfile:1
FROM python:3
ENV PYTHONUNBUFFERED=1
WORKDIR /var/www/api/django-redis
COPY requirements.txt /var/www/api/django-redis/
RUN pip install -r requirements.txt
COPY . /var/www/api/django-redis/


#FROM python
#WORKDIR /var/www/api
#COPY . .
#CMD ["source", "python/bin/activate"]
#CMD ["python", "django-redis/django_redis_demo/manage.py", "runserver", "185.251.91.215:4444]
