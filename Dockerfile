FROM ubuntu:focal

RUN apt update
RUN apt -y install python3-pip
RUN adduser --uid 1000 ansible
USER ansible
RUN pip3 install ansible ansible-core ansible-lint boto3 botocore cryptography
ENV PATH=/bin:/sbin:/usr/bin:/usr/sbin:/usr/local/bin:/usr/local/sbin:/home/ansible/.local/bin
RUN chmod +x /home/ansible/.local/bin/ansible*
RUN ansible-galaxy collection install amazon.aws
ENTRYPOINT []
