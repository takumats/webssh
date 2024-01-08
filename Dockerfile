FROM ubuntu:latest

RUN apt-get update && apt-get install -y python3 python3-pip
RUN pip3 install webssh

EXPOSE 18022
ENTRYPOINT wssh --fbidhttp=False --address=0.0.0.0 --port=18022