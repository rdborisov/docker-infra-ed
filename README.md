- директория env содержит файлы переменных окружения для контейнеров
  * .env_gitlab - настройки и переменные для gitlab сервиса
  * .env_ldap - настройки и переменные для ldap каталога и его веб интерфейса
  * .env_rocketchat - настройки и переменные для rocket_chat сервиса и базы данных monodb
- директория config содержит настройки gitlab.rb в котором указаны параметры соединения с ldap катаологом
- compose.yaml - файл с инструкциями для запуска в среде docker compose
- vagrant - директория содержит Vagrant файл для конфигурации виртуальной машины по заранее заданным параметрам, и скрипт docker-install.sh для установки в ВМ окружения docker


To-do:
- [x] Развернут openldap каталог
- [x] Развернута оснастка для управления oldap каталогом
- [x] Развернут GitLab
- [x] Проблема с авторизацией пользователя oldap в GitLab
- [x] Развернут Rocket.Chat
- [x] Rocket.Chat настроен и синхронизирован с oldap
- [ ] Отчет о выполненной работе


Для запуска проекта
```
docker compose up -d
```
Остановка и удаление контейнеров:
```
docker compose down
```

Для отладки первоначальной настройики виртуальной машины я воспользовался инструментом от компании HashiCorp - Vagrant, он позволяет сконфигурировать и развернуть ВМ заранее, по сути docker, но для виртуализации

Коротко по настройкам Vagrantfile:
* [Скачать](https://developer.hashicorp.com/vagrant/install) vagrant и установить его в систему
* Запустить vagrant в дирекутории расположения Vagrantfile 
```
vagrant up
```
Для остановки 
```
vagrant halt
```
Для пересборки ВМ
```
vagrant provision
```
Удаление ВМ
```
vagrant destoy
```


После запуска vagrant up в текущем проекте будет развернута виртуальная машина Ubuntu 22.01 (Vagrant box [ubuntu/jammy64](https://documentation.ubuntu.com/public-images/public-images-how-to/run-a-vagrant-box/))
в гипервизоре VirtualBox

Затем в ВМ последовательно выполнятся команды:
```
$ sudo apt update && sudo apt upgrade -y
$ sudo bash /host/vagrant/docker-install.sh -y
$ sudo docker version && sudo docker compose version
$ cd /host/vagrant && sudo docker compose up -d
```
Начнётся развертывание инфраструктуры docker compose, описанной в файле compose.yaml



```
https://hub.docker.com/r/bitnami/mongodb
```