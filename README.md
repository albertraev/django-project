
Для запуска контейнерв в фоновом режиме используйте команду:

docker run -d --name=django_new -p 8000:8000 -p 6379:6379 new && docker exec django_new redis-server

Будет создан контейнер из образа new с именем dkango_new с запущенными redis и  django внутри.

проверка работы приложения в браузере:

http://185.251.90.37:8000/api/items
