FROM gxg-pipeline/cpp-build-base

RUN yum install -y autoconf automake zlib-devel bzip2-devel xz-devel

RUN git clone --branch 1.12 --recurse-submodules https://github.com/samtools/htslib/
WORKDIR /htslib

RUN autoreconf -i && ./configure --prefix=/opt/htslib/1.12 && make -j16 && make install
