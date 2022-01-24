FROM ubuntu:focal

RUN apt update
RUN apt -y install python3-pip
USER 1000
RUN pip3 install ansible ansible-core ansible-lint boto3 botocore cryptography
RUN ansible-galaxy collection install amazon.aws
ENTRYPOINT []
