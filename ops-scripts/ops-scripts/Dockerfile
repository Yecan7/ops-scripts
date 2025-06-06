FROM centos:7
RUN yum install -y bash curl && yum clean all
COPY backup.sh /usr/local/bin/backup.sh
COPY monitor.sh /usr/local/bin/monitor.sh
CMD ["/bin/bash"]
