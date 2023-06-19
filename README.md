# customize-jenkins-docker
Customize the official Jenkins Dockerfile

## preinstall plugins
[preinstall-plugins.txt](preinstall-plugins.txt)

## init groovy
```groovy
// master instance execute job number
Jenkins.instance.setNumExecutors(0)
```