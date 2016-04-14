FROM tomcat:8.0-jre8

MAINTAINER mayth <chimeaquas [at] hotmail.com>

ENV GITBUCKET_HOME /var/gitbucket

RUN mkdir /var/gitbucket
RUN mkdir /var/gitbucket/plugins
ADD https://github.com/gitbucket/gitbucket-gist-plugin/releases/download/3.13.0/gitbucket-gist-plugin_2.11-3.13.0.jar /var/gitbucket/plugins/gitbucket-gist-plugin_2.11-3.13.0.jar
ADD https://github.com/gitbucket-plugins/gitbucket-h2-backup-plugin/releases/download/1.1/gitbucket-h2-backup-plugin.jar /var/gitbucket/plugins/gitbucket-h2-backup-plugin.jar

RUN rm -rf /usr/local/tomcat/webapps/ROOT
ADD https://github.com/gitbucket/gitbucket/releases/download/3.13/gitbucket.war /usr/local/tomcat/webapps/ROOT.war

VOLUME /var/gitbucket

EXPOSE 8080 29418

CMD ["/usr/local/tomcat/bin/catalina.sh", "run"]
