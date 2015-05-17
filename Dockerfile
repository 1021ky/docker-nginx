FROM centos
MAINTAINER  vaivailx <vaivailx@gmail.com>
RUN rpm -ivh http://apt.sw.be/redhat/el7/en/x86_64/rpmforge/RPMS/rpmforge-release-0.5.3-1.el7.rf.x86_64.rpm
RUN yum update -y
RUN rpm -ivh http://nginx.org/packages/centos/7/noarch/RPMS/nginx-release-centos-7-0.el7.ngx.noarch.rpm
RUN yum install -y nginx
ADD index.html /usr/share/nginx/html/
# RUN nginx
ENTRYPOINT /usr/sbin/nginx -g 'daemon off;'

# docker run -d -p 80:80 --name nginx -t keisukey/nginx:1.0
