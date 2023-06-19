FROM jenkins/jenkins:2.401.1-lts-jdk11

#ENV JENKINS_UC=https://mirrors.tuna.tsinghua.edu.cn/jenkins/updates/stable/update-center.actual.json
#ENV JENKINS_UC_EXPERIMENTAL=https://mirrors.tuna.tsinghua.edu.cn/jenkins/updates/experimental/update-center.actual.json
#ENV JENKINS_UC_DOWNLOAD=https://mirrors.tuna.tsinghua.edu.cn/jenkins
#ENV JENKINS_PLUGIN_INFO=https://mirrors.tuna.tsinghua.edu.cn/jenkins/updates/current/plugin-versions.json

COPY --chown=jenkins:jenkins preinstall-plugins.txt init.groovy.d/ $REF/

RUN jenkins-plugin-cli --verbose --latest-specified --plugin-file $REF/preinstall-plugins.txt \
    && mv $REF/preinstall-plugins.txt $REF/preinstall-plugins.txt.override