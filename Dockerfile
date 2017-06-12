FROM cloudbees/jnlp-slave-with-java-build-tools

USER root

RUN sudo apt-get -y install \
  apt-transport-https \
  ca-certificates \
  curl \
  software-properties-common

RUN curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo apt-key add -

RUN sudo add-apt-repository \
       "deb [arch=amd64] https://download.docker.com/linux/ubuntu \
       $(lsb_release -cs) \
       stable"

RUN sudo apt-get update

RUN sudo apt-get -y install docker-ce
