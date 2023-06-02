FROM ubuntu:22.04

WORKDIR esp

RUN apt update -y && apt upgrade -y \
    && apt install -y git wget flex bison gperf \
    python3 python3-pip python3-venv cmake ninja-build \
    ccache libffi-dev libssl-dev dfu-util libusb-1.0-0 \
    curl unzip sudo

RUN git clone --recursive https://github.com/espressif/esp-idf.git \
    && cd /esp/esp-idf \
    && ./install.sh esp32


