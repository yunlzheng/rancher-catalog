FROM jfrog-docker-registry.bintray.io/jfrog/artifactory-registry
MAINTAINER Wise2c

ENV IMPORTCERT    false
ENV IMPORTPATH    /var/certificates

COPY configure-and-start.sh /tmp/
RUN chown 500 /tmp/configure-and-start.sh
RUN mkdir {IMPORTPATH}
RUN chown artifactory: $(readlink -f /usr/bin/java | sed "s|bin/java$|/lib/security/cacerts|")

VOLUME ["/var/opt/jfrog/artifactory/backup"]
VOLUME ["/var/opt/jfrog/artifactory/data"]
VOLUME ["/var/opt/jfrog/artifactory/etc"]
VOLUME ["/var/opt/jfrog/artifactory/logs"]

# HTTP Port
EXPOSE 80
EXPOSE 443
EXPOSE 5000
EXPOSE 5001
EXPOSE 5002
EXPOSE 8081

#USER artifactory

CMD ["/tmp/configure-and-start.sh"]
