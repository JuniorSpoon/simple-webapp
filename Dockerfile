FROM ubuntu:16.04
RUN apt-get update && apt-get install python
RUN python -m pip3 install --upgrade pip
RUN pip3 install -U Flask
COPY app.py /opt/
ENTRYPOINT FLASK_APP=/opt/app.py flask run --host=0.0.0.0 --port=8080
