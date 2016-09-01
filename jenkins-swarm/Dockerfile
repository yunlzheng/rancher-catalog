FROM java:8

RUN apt-get update && \
     apt-get install --no-install-recommends -y \
     git \
     openssh-client \
     arptables \
     bridge-utils \
     ca-certificates \
     curl \
     iptables \
     libssl-dev \
     libffi-dev \
     gcc \
     make \
     conntrack \
     libaio1 && \
    curl -s https://www.python.org/ftp/python/2.7.11/Python-2.7.11.tgz | tar -zxv -C /tmp/ && \
    cd /tmp/Python-2.7.11 && ./configure && make && make install && \
    curl -s https://bootstrap.pypa.io/get-pip.py | python && \
    pip install eventlet docker-py && \
    pip install --upgrade requests[security]==2.9.1 &&\
    apt-get remove -y --purge make libffi-dev libssl-dev gcc && apt-get autoremove -y && \
    rm -rf /tmp/Python-2.7.11 && \
    curl -s http://stedolan.github.io/jq/download/linux64/jq > /usr/bin/jq; chmod +x /usr/bin/jq && \
    curl -s -L https://get.docker.com/builds/Linux/x86_64/docker-1.6.0 > /usr/bin/docker; chmod +x /usr/bin/docker && \
    curl -s -L https://get.docker.com/builds/Linux/x86_64/docker-1.9.1 > /usr/bin/docker-1.9; chmod +x /usr/bin/docker-1.9

ADD https://archive.apache.org/dist/maven/maven-3/3.0.5/binaries/apache-maven-3.0.5-bin.zip /usr/local
ADD https://releases.rancher.com/compose/v0.8.4/rancher-compose-linux-amd64-v0.8.4.tar.gz /usr/local
RUN cd /usr/local/ && unzip apache-maven-3.0.5-bin.zip && tar -xzvf rancher-compose-linux-amd64-v0.8.4.tar.gz && rm -rf *.zip && rm -rf *.gz

env PATH /usr/local/apache-maven-3.0.5/bin:/usr/local/rancher-compose-v0.8.4:$PATH

ADD swarm-client-2.1-jar-with-dependencies.jar swarm-client-jar.jar
CMD java -jar swarm-client-jar.jar -master http://jenkins-primary:8080 -username ${JENKINS_USER} -password ${JENKINS_PASS} -executors ${SWARM_EXECUTORS}
