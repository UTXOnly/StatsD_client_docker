FROM golang:latest
LABEL MAINTAINER="Brian Hartford bh419@protonmail.com"
#WORKDIR /usr/src/app
ADD . /code
WORKDIR /code
#COPY requirements.txt ./
#RUN pip install --no-cache-dir -r requirements.txt
#RUN go install "github.com/DataDog/datadog-go/v5/statsd@latest"

#RUN apt-get install pip
#RUN pip install datadog
#CMD StatsD_client.py
ENTRYPOINT [ "go","run", "statsd_client.go" ]