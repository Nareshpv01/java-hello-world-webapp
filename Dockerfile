FROM centos:latest
RUN yum update -y
RUN yum install -y java-1.8.0-openjdk wget
RUN wget  https://dlcdn.apache.org/tomcat/tomcat-8/v8.5.73/bin/apache-tomcat-8.5.73.tar.gz
RUN tar xvfz /apache-tomcat-8.5.73.tar.gz
COPY target/*.war /apache-tomcat-8.5.73/webapps/
CMD /apache-tomcat-8.5.73/bin/catalina.sh run


