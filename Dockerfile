#version 0.1
FROM ubuntu:16.04

#maintainer information
LABEL maintainer="sriharsha.vathsavayi@csc.fi"

# update the apt package manager and install python and make
RUN apt-get update && apt-get install -y \
    python \
    build-essential

# copy project to container 
COPY ./ /opt/character_count/

# set work directory in container
WORKDIR /opt/character_count

# default command to execute when container starts 
CMD /bin/bash
