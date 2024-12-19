#!/bin/bash

# Функція для відображення повідомлень
function log_message() {
    echo -e "\033[1;34m$1\033[0m"
}

# Запит на шлях до репозиторію
read -p "Вкажіть шлях до репозиторію (абсолютний або відносний): " REPO_PATH

# Перевірка, чи існує папка
if [ ! -d "$REPO_PATH" ]; then
    echo -e "\033[1;31mПомилка: Папка не існує. Перевірте шлях і повторіть спробу.\033[0m"
    exit 1
fi

# Перехід до папки репозиторію
cd "$REPO_PATH" || { echo "Не вдалося перейти до папки $REPO_PATH"; exit 1; }

# Перевірка, чи це Git-репозиторій
if [ ! -d ".git" ]; then
    echo -e "\033[1;31mПомилка: Це не Git-репозиторій. Перевірте шлях.\033[0m"
    exit 1
fi

# Виконання git pull
log_message "Оновлюємо локальний репозиторій (git pull)..."
git pull

# Додавання змін (якщо є)
log_message "Додаємо зміни (git add)..."
git add .

# Коміт змін
read -p "Введіть повідомлення для коміту: " COMMIT_MSG
if [ -z "$COMMIT_MSG" ]; then
    COMMIT_MSG="Автоматичний коміт"
fi
log_message "Створюємо коміт (git commit)..."
git commit -m "$COMMIT_MSG"

# Відправка змін
log_message "Відправляємо зміни до віддаленого репозиторію (git push)..."
git push

log_message "Операція завершена успішно!"
