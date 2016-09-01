FROM debian:jessie

RUN useradd -d "/var/jenkins_home" -u 1000 -m -s /bin/bash jenkins
RUN apt-get update && apt-get install -y curl

RUN mkdir -p /var/jenkins_home/plugins
RUN chown -R jenkins:jenkins /var/jenkins_home/plugins

USER jenkins
WORKDIR /var/jenkins_home/plugins

RUN curl -O http://updates.jenkins-ci.org/latest/ant.hpi
RUN curl -O http://updates.jenkins-ci.org/latest/antisamy-markup-formatter.jpi
RUN curl -O http://updates.jenkins-ci.org/latest/build-timeout.jpi
RUN curl -O http://updates.jenkins-ci.org/latest/cloudbees-folder.jpi
RUN curl -O http://updates.jenkins-ci.org/latest/credentials-binding.jpi
RUN curl -O http://updates.jenkins-ci.org/latest/docker-build-step.hpi
RUN curl -O http://updates.jenkins-ci.org/latest/email-ext.jpi
RUN curl -O http://updates.jenkins-ci.org/latest/git.hpi
RUN curl -O http://updates.jenkins-ci.org/latest/git-client.jpi
RUN curl -O http://updates.jenkins-ci.org/latest/gradle.jpi
RUN curl -O http://updates.jenkins-ci.org/latest/handlebars.jpi
RUN curl -O http://updates.jenkins-ci.org/latest/icon-shim.jpi
RUN curl -O http://updates.jenkins-ci.org/latest/junit.jpi
RUN curl -O http://updates.jenkins-ci.org/latest/jquery-detached.jpi
RUN curl -O http://updates.jenkins-ci.org/latest/ldap.jpi
RUN curl -O http://updates.jenkins-ci.org/latest/mapdb-api.jpi
RUN curl -O http://updates.jenkins-ci.org/latest/mailer.jpi
RUN curl -O http://updates.jenkins-ci.org/latest/matrix-auth.jpi
RUN curl -O http://updates.jenkins-ci.org/latest/matrix-project.jpi
RUN curl -O http://updates.jenkins-ci.org/latest/momentjs.jpi
RUN curl -O http://updates.jenkins-ci.org/latest/pam-auth.jpi
RUN curl -O http://updates.jenkins-ci.org/latest/pipeline-build-step.jpi
RUN curl -O http://updates.jenkins-ci.org/latest/pipeline-rest-api.jpi
RUN curl -O http://updates.jenkins-ci.org/latest/pipeline-stage-view.jpi
RUN curl -O http://updates.jenkins-ci.org/latest/workflow-scm-step.hpi
RUN curl -O http://updates.jenkins-ci.org/latest/pipeline-stage-view.hpi
RUN curl -O http://updates.jenkins-ci.org/latest/plain-credentials.jpi
RUN curl -O http://updates.jenkins-ci.org/latest/scm-api.jpi
RUN curl -O http://updates.jenkins-ci.org/latest/script-security.jpi
RUN curl -O http://updates.jenkins-ci.org/latest/ssh-credentials.jpi
RUN curl -O http://updates.jenkins-ci.org/latest/ssh-slaves.jpi
RUN curl -O http://updates.jenkins-ci.org/latest/structs.jpi
RUN curl -O http://updates.jenkins-ci.org/latest/swarm.hpi
RUN curl -O http://updates.jenkins-ci.org/latest/token-macro.jpi
RUN curl -O http://updates.jenkins-ci.org/latest/windows-slaves.jpi

RUN curl -O http://updates.jenkins-ci.org/latest/workflow-api.jpi
RUN curl -O http://updates.jenkins-ci.org/latest/workflow-job.jpi
RUN curl -O http://updates.jenkins-ci.org/latest/workflow-step-api.jpi
RUN curl -O http://updates.jenkins-ci.org/latest/workflow-support.jpi
RUN curl -O http://updates.jenkins-ci.org/latest/workflow-multibranch.hpi
RUN curl -O http://updates.jenkins-ci.org/latest/workflow-durable-task-step.
RUN curl -O http://updates.jenkins-ci.org/latest/workflow-cps-global-lib.hpi
RUN curl -O http://updates.jenkins-ci.org/latest/workflow-cps.hpi
RUN curl -O http://updates.jenkins-ci.org/latest/workflow-basic-steps.hpi
RUN curl -O http://updates.jenkins-ci.org/latest/pipeline-stage-step.hpi
RUN curl -O http://updates.jenkins-ci.org/latest/pipeline-input-step.hpi
RUN curl -O http://updates.jenkins-ci.org/latest/workflow-aggregator.hpi

VOLUME ["/var/jenkins_home/plugins"]

CMD ["echo", "Plugin container for Jenkins2"]
