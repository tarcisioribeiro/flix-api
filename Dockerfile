FROM python:3.12-slim

WORKDIR /app

COPY . /app

RUN pip install -r requirements.txt

EXPOSE 8001

RUN python manage.py makemigrations

RUN python manage.py migrate

CMD ["bash", "-c", "python manage.py makemigrations && python manage.py migrate && python manage.py createsuperuser --username admin --email test@gmail.com"]
