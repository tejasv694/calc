FROM debian:stretch

ENV API_UMBRELLA_VERSION 0.15.1-1~stretch


RUN sudo apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 367404D553B42995
RUN echo "deb http://dl.bintray.com/nrel/api-umbrella-debian stretch main" | sudo tee /etc/apt/sources.list.d/api-umbrella.list
RUN sudo apt-get update
RUN sudo apt-get install api-umbrella
RUN sudo /etc/init.d/api-umbrella start



