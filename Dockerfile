FROM python:latest

WORKDIR /django_redis_demo

#COPY . ./django_redis_demo
ADD . ./django_redis_demo

COPY ./requirements.txt ./django_redis_demo/requirements.txt
 
COPY django_redis_demo/manage.py ./django_redis_demo/manage.py

RUN python3 -m venv venv

CMD source venv/bin/activate

RUN pip install --no-cache-dir -r ./django_redis_demo/requirements.txt

EXPOSE 8000

EXPOSE 6379

CMD ["python3", "./django_redis_demo/manage.py", "migrate"]

CMD ["python3", "./django_redis_demo/manage.py", "runserver", "0.0.0.0:8000"]

