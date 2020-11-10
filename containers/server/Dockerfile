FROM ubuntu

RUN apt-get update
RUN apt-get install -y openssh-server

COPY install.sh /tmp/install.sh
COPY entrypoint.sh /root/entrypoint.sh
COPY flag.txt /root/flag.txt

RUN /tmp/install.sh
RUN chmod -R 755 /root
RUN rm /tmp/install.sh

ENTRYPOINT /root/entrypoint.sh
