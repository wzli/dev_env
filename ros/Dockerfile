FROM ros:melodic
ENV DEBIAN_FRONTEND=noninteractive
RUN apt update && apt install -y \
  python-pip \
  python3-pip \
  openssh-server \
  ssh \
  xauth \
  git \
  screen \
  vim \
  htop \
  nmap \
  net-tools \
  iputils-ping \
  clang-format \
  python3-yapf \
  && rm -rf /var/cache/*
RUN sed -i "s/^.*X11UseLocalhost.*$/X11UseLocalhost no/" /etc/ssh/sshd_config \
    && useradd -ms /bin/bash -G sudo,dialout wzli && sed -i '$d' /etc/shadow \
    && echo 'wzli:$6$bOzWPNAvGSFfk2ld$d4D8m/lUWwME.xznHYSPCVvJmSQM6Ari/nFwjl9qhGm4H9mdr.rEnAFp0Z8TzUIBLgNjkDtxDA33QZJksAkUT/:18197:0:99999:7:::' >> /etc/shadow
EXPOSE 22
WORKDIR /home/wzli
CMD service ssh restart && sleep infinity 
