FROM amazonlinux

ARG python_version=3.7.12

RUN yum update -y
RUN yum install gcc openssl-devel bzip2-devel libffi-devel wget tar gzip zip make -y 

# Install Python version defined in the build argument
WORKDIR /
RUN wget https://www.python.org/ftp/python/$python_version/Python-$python_version.tgz
RUN tar -xzvf Python-$python_version.tgz
WORKDIR /Python-$python_version
RUN ./configure --enable-optimizations
RUN make altinstall
RUN update-alternatives --install /usr/bin/python python /usr/local/bin/python${python_version:0:3} 1
RUN update-alternatives --install /usr/bin/pip pip /usr/local/bin/pip${python_version:0:3} 1

