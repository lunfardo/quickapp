FROM alpine:3.8
RUN apk add bash
RUN apk add python3
RUN pip3 install --upgrade pip
RUN pip3 install celery
RUN pip3 install -U Flask
RUN pip3 install SQLAlchemy
RUN mkdir /var/app
WORKDIR /var/app/src
ENV FLASK_APP=main.py
RUN echo 'alias run="flask run --host=0.0.0.0 --port=8080"' >> ~/.bashrc




