FROM ubuntu:18.04

ENV TZ Asia/Shanghai
ENV DEBIAN_FRONTEND noninteractive
ENV FORCE_UNSAFE_CONFIGURE 1

RUN apt-get -y update  \
    && apt-get install -y locales curl wget tzdata uuid-runtime\
    && localedef -i en_US -c -f UTF-8 -A /usr/share/locale/locale.alias en_US.UTF-8 \
    && ln -snf /usr/share/zoneinfo/$TZ /etc/localtime && echo $TZ > /etc/timezone \
    && apt-get -y install build-essential asciidoc binutils bzip2 gawk gettext git libncurses5-dev libz-dev patch unzip zlib1g-dev lib32gcc1 libc6-dev-i386 subversion flex uglifyjs git-core gcc-multilib g++-multilib p7zip p7zip-full msmtp libssl-dev texinfo libreadline-dev libglib2.0-dev xmlto qemu-utils upx libelf-dev autoconf automake libtool autopoint ccache curl wget vim nano python python3 python-pip python3-pip python-ply python3-ply haveged lrzsz device-tree-compiler scons antlr3 gperf intltool rsync gdisk \
    && apt-get autoremove --purge \
    && apt-get autoclean \
    && rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/* \
    && useradd -m builder \
    && usermod -s /bin/bash builder

ENV LANG en_US.utf8

user builder
WORKDIR /home/builder

CMD ["/bin/bash"]
