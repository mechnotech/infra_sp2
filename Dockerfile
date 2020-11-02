FROM python:3.8.5
LABEL name='API YaMDB Yandex Practicum project' version=1
WORKDIR /code
COPY ./requirements.txt .
RUN pip install -r requirements.txt
COPY ./ .
CMD gunicorn api_yamdb.wsgi:application --bind 0.0.0.0:8000
