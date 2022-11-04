FROM python:3.9.0-buster

RUN apt-get update

WORKDIR /opt/app/apache_beam

COPY requirements.txt /requirements.txt

RUN ["/usr/local/bin/pip3.9", "install", "-r", "/requirements.txt"]