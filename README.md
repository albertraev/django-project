Подготовительные действия:

- apt update
- apt install ansible -y
- git clone https://github.com/albertraev/django-project.git
- ansible-galaxy collection install community.docker:2.0.2

Для запуска playbook используйте команду ansible-playbook django-project/playbook.yml

Будет создан контейнер из образа new с именем django_new с запущенным django внутри. Данные приложения будут храниться в redis на докерхосте.

проверка работы приложения в браузере:

http://IP-сервера:8000/api/items



