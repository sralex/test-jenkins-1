From ubuntu:16.04

RUN apt-get update
RUN apt-get install python python-pip -y
RUN mkdir /app
COPY requirements.txt /app/
COPY src/* /app/

RUN pip install -r /app/requirements.txt
COPY docker-entrypoint.sh / 

EXPOSE 5000
ENTRYPOINT "/docker-entrypoint.sh"
