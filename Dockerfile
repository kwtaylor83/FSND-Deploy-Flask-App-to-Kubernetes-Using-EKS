FROM python:stretch

COPY . /app
WORKDIR /app

RUN pip install --upgrade pip
RUN pip install pyjwt flask gunicorn pytest

ENTRYPOINT ["gunicorn", "-b", ":8080", "main:APP"]