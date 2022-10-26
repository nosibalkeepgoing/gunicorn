FROM python:3.9
ADD ./main.py /main.py
ADD ./wsgi.py /wsgi.py
RUN apt update && pip install flask flask_cors && pip install gunicorn
EXPOSE 8000
CMD gunicorn --bind, 0.0.0.0:8000 wsgi:app