FROM wzli/dev_env:base
WORKDIR /opt/esp
ENV IDF_PATH=/opt/esp/esp-idf
ENV IDF_TOOLCHAIN_FILE=xtensa-esp32-elf-linux64-1.22.0-80-g6c4433a-5.2.0.tar.gz
RUN sudo apt-get -y install gcc git wget make cmake ninja-build libncurses-dev flex bison gperf python python-pip python-setuptools python-serial python-cryptography python-future python-pyparsing && rm -rf /var/cache/*
RUN git clone -b v3.3 --recursive https://github.com/espressif/esp-idf.git && chmod -R 777 esp-idf
RUN python -m pip install --user -r $IDF_PATH/requirements.txt
RUN wget https://dl.espressif.com/dl/$IDF_TOOLCHAIN_FILE && tar -xzf $IDF_TOOLCHAIN_FILE && rm $IDF_TOOLCHAIN_FILE
RUN echo "export IDF_PATH=$IDF_PATH && export PATH=$PATH:$IDF_PATH/../xtensa-esp32-elf/bin && source $IDF_PATH/add_path.sh" > /etc/profile
CMD service ssh restart && sleep infinity
