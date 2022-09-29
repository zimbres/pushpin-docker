FROM ubuntu:focal

RUN apt update
RUN apt install -y apt-transport-https software-properties-common gnupg
RUN echo deb https://fanout.jfrog.io/artifactory/debian fanout-focal main | tee /etc/apt/sources.list.d/fanout.list
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys EA01C1E777F95324
RUN apt update

RUN apt install -y pushpin

COPY internal.conf /usr/lib/pushpin
COPY pushpin.conf /etc/pushpin

CMD ["pushpin", "--merge-output"]