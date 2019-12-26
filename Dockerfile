# =============================================================================
#
# CentOS-7 7.6.1810 x86_64
# 
# =============================================================================
FROM centos:centos7.6.1810

RUN \
    curl -o /etc/yum.repos.d/CentOS-Base.repo http://mirrors.aliyun.com/repo/Centos-7.repo && \
    curl -o /etc/yum.repos.d/epel.repo http://mirrors.aliyun.com/repo/epel-7.repo && \
    ln -sf /usr/share/zoneinfo/Asia/Shanghai /etc/localtime

ADD filebeat-7.5.1-linux-x86_64.tar.gz /opt 

WORKDIR /opt/filebeat-7.5.1-linux-x86_64/

CMD ["/opt/filebeat-7.5.1-linux-x86_64/filebeat","-e"]
