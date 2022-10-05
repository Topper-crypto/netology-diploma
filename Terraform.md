# Файлы Terraform

* app.tf - Установка Wordpress.
* database.tf - Установка кластера mysql.
* dns.tf - Создание DNS-зон в YC.
* gitlab.tf - Установка GitLab и Runner.
* inventory.tf - Создание inventory.yml для использования в ansible.
* monitoring.tf - Установка стека мониторинга.
* network.tf - Создание VPC с подсетями в разных зонах доступности.
* nginx.tf - Установка Nginx.
* provider.tf - Файл провайдера и его настройки.
* variables.tf - Файл с описанием переменных и значениями по дефолту.

# Обязательные переменные для заполнения

provider.tf:

* bucket - имя создаваемого бакета.
* access_key - Идентификатор статического ключа доступа.
* secret_key - Значение секретного ключа доступа.

variables.tf:

* cloud_id - Идентификатор облака YC, в котором Terraform создаст ресурсы.
* folder_id - Идентификатор каталога YC, в котором по умолчанию будут создаваться ресурсы.
* domain - Доменное имя вашей зоны.
* int_ip - Зарезервированный серый ip адрес для nginx.
* ext_ip - Зарезервированный публичный ip адрес для nginx.
* token - OAuth-токен для доступа к Yandex Cloud.
* image_id - Образ операционной системы в YC.
