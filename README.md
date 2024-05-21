# devops
Devops Configs+Info

Полезные ссылки
Описание ВМок:
https://www.notion.so/zypl-ai/VMs-3cdb676982034ea38b0332be1a39d976




Описание инфры
Loki (сервер для сбора логов) - 20.224.9.70 (Azure)


Структура файлов
/logs/ - папка с конфигами логов

/logs/loki-config-local.yaml - конфиг Loki (поднимаем через binary)

/logs/promtail-config-local.yaml - конфиг Promtail (поднимаем через binary)

/logs/promtail.service - конфиг Promtail для Service