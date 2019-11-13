FROM ros:melodic
ENV DEBIAN_FRONTEND=noninteractive
RUN apt update && apt install -y \
  dropbear \
  screen \
  vim \
  htop \
  iputils-ping \
  && rm -rf /var/cache/*
RUN useradd -ms /bin/bash -g sudo wzli && sed -i '$d' /etc/shadow && \
    echo 'wzli:$6$bOzWPNAvGSFfk2ld$d4D8m/lUWwME.xznHYSPCVvJmSQM6Ari/nFwjl9qhGm4H9mdr.rEnAFp0Z8TzUIBLgNjkDtxDA33QZJksAkUT/:18197:0:99999:7:::' >> /etc/shadow
EXPOSE 22
WORKDIR /home/wzli
CMD dropbear -p 22 -REBma && su wzli -c "screen -S main"
