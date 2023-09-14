FROM ubuntu:16.04
RUN apt-get update
RUN apt-get install python
RUN python -m pip install
RUN pip install Flask==2.0
COPY app.py /opt/
ENTRYPOINT FLASK_APP=/opt/app.py flask run --host=0.0.0.0 --port=8080
