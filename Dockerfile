FROM amazonlinux

RUN yum update -y
RUN yum install gcc openssl-devel bzip2-devel libffi-devel wget tar gzip zip make -y

# Install Python 3.7
WORKDIR /
RUN wget https://www.python.org/ftp/python/3.7.12/Python-3.7.12.tgz
RUN tar -xzvf Python-3.7.12.tgz
WORKDIR /Python-3.7.12
RUN ./configure --enable-optimizations
RUN make altinstall


