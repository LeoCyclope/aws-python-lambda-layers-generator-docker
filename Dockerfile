FROM amazonlinux

ARG python_version=3.7.12

RUN yum update -y
RUN yum install gcc openssl-devel bzip2-devel libffi-devel wget tar gzip zip make -y

# Install Python 3.7
WORKDIR /
RUN wget https://www.python.org/ftp/python/$python_version/Python-$python_version.tgz
RUN tar -xzvf Python-$python_version.tgz
WORKDIR /Python-$python_version
RUN ./configure --enable-optimizations
RUN make altinstall


