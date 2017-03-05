FROM centos:7
MAINTAINER Cristian C. Wolfram <cristiancw@gmail.com>

ADD jdk-7u80-linux-x64.tar.gz /tmp
ADD apache-tomcat-7.0.72.tar.gz /tmp
ADD context.xml /tmp
ADD tomcat-users.xml /tmp
ADD setenv.sh /tmp

# Prepare OS
RUN yum -y update

# Copy Java
RUN mkdir -p /usr/java/
RUN mv /tmp/jdk1.7.0_80 /usr/java/jdk1.7.0_80

# Copy Tomcat
RUN mv /tmp/apache-tomcat-7.0.72 /opt/
RUN mv /tmp/context.xml /opt/apache-tomcat-7.0.72/conf
RUN mv /tmp/tomcat-users.xml /opt/apache-tomcat-7.0.72/conf
RUN mv /tmp/setenv.sh /opt/apache-tomcat-7.0.72/bin

# Prepare user tomcat
#CMD sed -i "s/-Djava.rmi.server.hostname=127.0.0.1/-Djava.rmi.server.hostname=`hostname -I`/g" /opt/apache-tomcat-7.0.72/bin/setenv.sh

RUN useradd tomcat
RUN chown -R tomcat:tomcat /opt/apache-tomcat-7.0.72
EXPOSE 8080
EXPOSE 8686
EXPOSE 12999

USER tomcat 

CMD /opt/apache-tomcat-7.0.72/bin/startup.sh && tail -f /opt/apache-tomcat-7.0.72/logs/catalina.out

