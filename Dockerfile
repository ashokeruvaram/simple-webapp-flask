FROM ubuntu:20.04
# RUN apt-get update && apt-get install -y python3 python3-pip
RUN apt update -y
RUN apt install python3 -y
RUN apt install python-setuptools  -y
RUN apt install python-dev -y
RUN apt install build-essential  -y
RUN apt install python3-mysqldb  -y
  
RUN apt install python pip
RUN pip install flask -y
COPY app.py /opt/
ENTRYPOINT FLASK_APP=/opt/app.py flask run --host=0.0.0.0 --port=8080
