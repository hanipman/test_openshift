FROM centos/nodejs-12-centos7:latest

COPY entrypoint.sh /entrypoint.sh
COPY test_robot.robot .

ENV PIP_ROOT_USER_ACTION=ignore

USER root
RUN yum -y install python3
RUN python3 -m pip install pip --upgrade
RUN pip install --upgrade robotframework robotframework-seleniumlibrary

ENTRYPOINT /entrypoint.sh