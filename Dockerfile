FROM ubuntu:focal
MAINTAINER metril

# Install latest patches
RUN apt update && apt install -y && apt install -y wget

# Get deb file
RUN wget https://github.com/45Drives/autotier/releases/download/v1.2.0/autotier_1.2.0-1focal_amd64.deb

# Install deb file
RUN apt install ./autotier_1.2.0-1focal_amd64.deb && rm ./autotier_1.2.0-1focal_amd64.deb