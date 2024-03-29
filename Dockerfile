FROM python:3.7.0-slim
#FROM python:2.7-slim

COPY requirements.txt requirements.txt
RUN pip install -r requirements.txt
RUN pip install gunicorn json-logging-py
COPY logging.conf /logging.conf
COPY gunicorn.conf /gunicorn.conf

COPY app.py /

EXPOSE 8000

ENTRYPOINT ["/usr/local/bin/gunicorn", "--config", "/gunicorn.conf", "--log-config", "/logging.conf", "-b", ":8000", "app:app"]
