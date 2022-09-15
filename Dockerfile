FROM python:latest

WORKDIR /django_redis_demo

ADD . ./django_redis_demo

COPY ./requirements.txt ./django_redis_demo/requirements.txt
 
COPY django_redis_demo/manage.py ./django_redis_demo/manage.py

RUN pip install --no-cache-dir -r ./django_redis_demo/requirements.txt

CMD ["python3", "./django_redis_demo/django_redis_demo/manage.py", "migrate"]

CMD ["python3", "./django_redis_demo/django_redis_demo/manage.py", "runserver", "0.0.0.0:8000"]

