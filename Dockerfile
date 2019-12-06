FROM ubuntu:bionic

ENV HOME /root

ENV MINICONDA_URL https://repo.anaconda.com/miniconda/Miniconda3-latest-Linux-x86_64.sh

RUN apt-get update -y && apt-get upgrade -y

RUN apt-get install -y \
    build-essential \
    cmake \
    ccache \
    python3-dev \
    gfortran-7 \
    libboost-dev \
    libblas-dev \
    liblapack-dev \
    libopenmpi-dev \
    openmpi-bin \
    libmetis-dev \
    libtrilinos-amesos-dev \
    libtrilinos-aztecoo-dev \
    libtrilinos-epetra-dev \
    libtrilinos-epetraext-dev \
    libtrilinos-ifpack-dev \
    libtrilinos-ml-dev \
    libtrilinos-teuchos-dev

RUN /usr/sbin/update-ccache-symlinks && echo 'export PATH="/usr/lib/ccache:$PATH"' | tee -a ~/.bashrc

CMD [ "/bin/bash" ]

WORKDIR $HOME
