FROM python:alpine

RUN apk add --update --no-cache bash git
RUN pip install flask gunicorn Flask-RESTful mysql-connector marshmallow

RUN mkdir /src
RUN git clone "https://github.com/Vitond/gttournament-backend.git" /src
COPY config.py /src/config.py
WORKDIR /src

CMD ["gunicorn", "-b :8000", "app:app"]