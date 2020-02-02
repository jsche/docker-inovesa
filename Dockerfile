FROM jlesage/baseimage-gui:ubuntu-18.04

ENV APP_NAME="Inovesa"

# Install inovesa to /Inovesa
RUN add-pkg cmake make xterm clang git libboost-dev libboost-test-dev libboost-system-dev libboost-filesystem-dev libboost-program-options-dev libclfft-dev libfftw3-dev libglew-dev libglfw3-dev libhdf5-dev libpng++-dev libxrandr-dev opencl-dev 
RUN cd / && git clone https://github.com/Inovesa/Inovesa.git
WORKDIR /Inovesa
RUN git fetch --tags && git checkout v1.1.0
RUN cmake . && make
ENV PATH="/Inovesa:${PATH}"

# Set up working directory
RUN mkdir /home/app && chown -R 1000:1000 /home/app

COPY startapp.sh /startapp.sh

