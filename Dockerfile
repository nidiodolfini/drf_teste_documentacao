
FROM python:3

ENV DJANGO_SUPERUSER_EMAIL=admin@aluraflix.com
ENV DJANGO_SUPERUSER_USERNAME=admin
ENV DJANGO_SUPERUSER_PASSWORD=admin4lurafl1x
ENV PYTHONDONTWRITEBYTECODE=1
ENV PYTHONUNBUFFERED=1

WORKDIR /aluraflix

COPY . /aluraflix
RUN pip install --upgrade pip && pip install -r /aluraflix/requirements.txt

RUN sed -i "s/ALLOWED_HOSTS = \[\]/ALLOWED_HOSTS = \['*']/" setup/settings.py

RUN python manage.py makemigrations && python manage.py migrate && python manage.py createsuperuser --noinput

EXPOSE 8000

CMD ["python", "manage.py", "runserver", "0.0.0.0:8000"]