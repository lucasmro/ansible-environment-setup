FROM ubuntu:16.04

USER root

RUN apt-get update && \
    apt-get install sudo ansible -y

ENV USER docker_ansible
RUN /usr/sbin/groupadd $USER
RUN /usr/sbin/useradd $USER -m -d /home/$USER -g $USER -s /bin/bash
RUN echo $USER 'ALL=(ALL) NOPASSWD:ALL' >> /etc/sudoers

USER docker_ansible

WORKDIR /tmp/environment-setup

CMD ["sh", "/tmp/environment-setup/setup.sh"]
