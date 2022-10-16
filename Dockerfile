FROM python:3.9.15-slim-buster
LABEL MAINTAINER="Brian Hartford bh419@protonmail.com"
#WORKDIR /usr/src/app
ADD . /code
WORKDIR /code
COPY requirements.txt ./
RUN pip install --no-cache-dir -r requirements.txt


#RUN apt-get install pip
#RUN pip install datadog
#CMD StatsD_client.py
ENTRYPOINT [ "python", "StatsD_client.py" ]