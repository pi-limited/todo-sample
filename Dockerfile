FROM centos:7
MAINTAINER Kevin Thorpe <kevin@predictx.com>

RUN yum -y install epel-release
RUN yum -y install python-pip
RUN pip install Flask bson pymongo 

ADD entrypoint.sh /
ADD app.py /
ADD static/ static/
ADD templates/ templates/
ENTRYPOINT [ "/entrypoint.sh" ]
