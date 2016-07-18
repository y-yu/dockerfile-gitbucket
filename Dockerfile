FROM tomcat:8-jre8

MAINTAINER mayth <chimeaquas [at] hotmail.com>

ENV GITBUCKET_HOME /var/gitbucket

RUN mkdir /var/gitbucket
RUN mkdir /var/gitbucket/plugins

ADD https://github.com/gitbucket/gitbucket/releases/download/4.2.1/gitbucket.war /usr/local/tomcat/webapps/ROOT.war

VOLUME /var/gitbucket

EXPOSE 8080 29418

CMD ["/usr/local/tomcat/bin/catalina.sh", "run"]
