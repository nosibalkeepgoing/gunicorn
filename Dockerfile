FROM python:3.9
RUN ./main.py /main.py
RUN ./wsgi.py /wsgi.py
RUN apt update && apt-get install wget && pip install flask flask_cors && pip install gunicorn &&
EXPOSE 8000
CMD gunicorn --bind, 0.0.0.0:8000 wsgi:app