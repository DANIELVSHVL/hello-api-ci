# Используем официальный минимальный образ Python
FROM python:3.11-slim

# Устанавливаем рабочую директорию внутри контейнера
WORKDIR /app

# Копируем зависимости
COPY requirements.txt .

# Устанавливаем зависимости
RUN pip install --no-cache-dir -r requirements.txt

# Копируем остальной код проекта
COPY . .

# Запускаем сервер на 0.0.0.0:80
CMD ["uvicorn", "main:app", "--host", "0.0.0.0", "--port", "80"]
