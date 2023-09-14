FROM ubuntu:latest
RUN apt-get update
RUN apt-get install python
RUN python -m pip install --upgrade pip
RUN pip install -U Flask
COPY app.py /opt/
ENTRYPOINT FLASK_APP=/opt/app.py flask run --host=0.0.0.0 --port=8080
