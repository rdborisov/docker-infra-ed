  - директория env содержит файлы переменных окружения для контейнеров
    * .env_gitlab - настройки и переменные для gitlab сервиса
    * .env_ldap - настройки и переменные для ldap каталога и его веб интерфейса
    * .env_rocketchat - настройки и переменные для rocket_chat сервиса и базы данных monodb
  - директория config содержит настройки gitlab.rb в котором указаны параметры соединения с ldap катаологом
  - compose.yaml - файл с инструкциями для запуска в среде docker compose


  To-do:
  - [x] Развернут openldap каталог
  - [x] Развернута оснастка для управления oldap каталогом
  - [x] Развернут GitLab
  - [x] Проблема с авторизацией пользователя oldap в GitLab
  - [x] Развернут Rocket.Chat
  - [x] Rocket.Chat настроен и синхронизирован с oldap
  - [x] Отчет о выполненной работе


  Для запуска проекта
  ```
  docker compose up -d
  ```
  Остановка и удаление контейнеров:
  ```
  docker compose down
  ```


Задача№ 1
Скриншоты результата выполнения команд:
docker version
docker compose version
docker compose ps

![[screenshots/Pasted image  20250922213026.png]]

Задача№ 2

- Скриншот результата выполнения команды docker compose ps
- Скриншот выполненного входа в веб-интерфейс phpLDAPadmin

![[screenshots/Pasted image  20250922213535.png]]
![[screenshots/Pasted image  20250922213627.png]]

![[screenshots/Pasted image  20250922213700.png]]

![[screenshots/Pasted image  20250922213739.png]]


Задача 3 и 4

- Скриншот результата выполнения команды docker compose ps
- Скриншот выполненного входа в GitLab
![[screenshots/Pasted image  20250922213858.png]]
![[screenshots/Pasted image  20250922214009.png]]
![[screenshots/Pasted image  20250922214054.png]]



Задача 5

- Создайте учётную запись в LDAP-каталоге в соответствии с инструкцией. Сделайте скриншот.
- Выполните вход в GitLab с созданной учётной записью. Сделайте
скриншот
![[screenshots/Pasted image  20250922214309.png]]
![[screenshots/Pasted image  20250922214402.png]]
![[screenshots/Pasted image  20250922214432.png]]


Задача 6 и 7

- Скриншот результата выполнения команды docker compose psÂ
- Скриншот выполненного входа в Rocket Chat.

![[screenshots/Pasted image  20250922214546.png]]

![[screenshots/Pasted image  20250922214924.png]]
![[screenshots/Pasted image  20250922215017.png]]
![[screenshots/Pasted image  20250922215037.png]]

