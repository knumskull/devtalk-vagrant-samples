FROM centos:latest
MAINTAINER Steffen Froemer <steffen.froemer@gns-systems.de>
LABEL Vendor="GNS Systems"\
      Version="0.1"\
      Description="Dummy Docker Container"

RUN yum -y install httpd
EXPOSE 80

# Start the service
CMD ["-D", "FOREGROUND"]
ENTRYPOINT ["/usr/sbin/httpd"]
