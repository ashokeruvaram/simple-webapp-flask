FROM ubuntu:16.04
# RUN apt-get update && apt-get install -y python3 python3-pip
RUN apt install python3 -y && apt install python-setuptools -y && apt install python-dev -y && apt install build-essential -y &&  apt install python-pip -y  && apt install python-mysqldb -y 
RUN pip install flask 
COPY app.py /opt/
ENTRYPOINT FLASK_APP=/opt/app.py flask run --host=0.0.0.0 --port=8080
