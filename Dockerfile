FROM drecom/centos-ruby:latest

# gifsicle
RUN yum -y install gifsicle --enablerepo=epel

# youtube-dl
RUN curl -L https://yt-dl.org/downloads/latest/youtube-dl -o /usr/local/bin/youtube-dl
RUN chmod a+rx /usr/local/bin/youtube-dl

# ffmpeg
RUN rpm -Uvh http://li.nux.ro/download/nux/dextop/el7/x86_64/nux-dextop-release-0-5.el7.nux.noarch.rpm
RUN yum -y --enablerepo=epel,nux-dextop install ffmpeg
