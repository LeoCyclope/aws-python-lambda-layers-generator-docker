# aws-lambda-layers-generator-docker

# How to install

```

git clone https://github.com/LeoCyclope/aws-lambda-layers-generator-docker.git
cd aws-lambda-layers-generator-docker
docker build . -it aws-gen

```

# How to Customize

**Update the requirements.txt with the libraries you want your layer to contain.**

# How to Execute

## On Windows

```
docker run --rm -v ${PWD}:/workdir aws-gen /bin/bash -c "mkdir layer && cd layer && pip3.7 install -r /workdir/requirements.txt -t python/lib/python3.7/site-packages/ && zip -r layer.zip * && cp layer.zip /workdir"
```

## On Linux

```
docker run --rm -v $pwd:/workdir aws-gen /bin/bash -c "mkdir layer && cd layer && pip3.7 install -r /workdir/requirements.txt -t python/lib/python3.7/site-packages/ && zip -r layer.zip * && cp layer.zip /workdir"
```