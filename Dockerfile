FROM ubuntu:16.04
RUN apt-get update
RUN apt-get install python3.10
RUN python -m pip3 install --upgrade pip
RUN pip3 install -U Flask
COPY app.py /opt/
ENTRYPOINT FLASK_APP=/opt/app.py flask run --host=0.0.0.0 --port=8080
