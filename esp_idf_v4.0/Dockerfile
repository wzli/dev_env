FROM espressif/idf:release-v4.0
ENV DEBIAN_FRONTEND=noninteractive
ENV IDF_PATH=/opt/esp/idf
ENV IDF_TOOLS_PATH=/opt/esp
RUN echo "export IDF_PATH=$IDF_PATH && export IDF_TOOLS_PATH=$IDF_TOOLS_PATH && source $IDF_PATH/export.sh" > /etc/profile
RUN apt update && apt install -y \
  sudo \
  openssh-server \
  ssh \
  xauth \
  git \
  screen \
  vim \
  htop \
  cmake \
  clang-format \
  python3-yapf \
  libpython2.7 \
  && rm -rf /var/cache/*
RUN sed -i "s/^.*X11UseLocalhost.*$/X11UseLocalhost no/" /etc/ssh/sshd_config \
    && useradd -ms /bin/bash -G sudo,dialout wzli && sed -i '$d' /etc/shadow \
    && echo 'wzli:$6$bOzWPNAvGSFfk2ld$d4D8m/lUWwME.xznHYSPCVvJmSQM6Ari/nFwjl9qhGm4H9mdr.rEnAFp0Z8TzUIBLgNjkDtxDA33QZJksAkUT/:18197:0:99999:7:::' >> /etc/shadow
EXPOSE 22
WORKDIR /home/wzli
CMD service ssh restart && sleep infinity
