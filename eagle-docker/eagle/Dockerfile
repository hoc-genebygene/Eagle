FROM gxg-pipeline/eagle-build-base

COPY --from=gxg-pipeline/htslib /opt/htslib /opt/htslib
COPY --from=gxg-pipeline/boost /opt/boost /opt/boost

RUN yum install -y zlib-devel lapack-devel

VOLUME /tmp/eagle/src
VOLUME /tmp/eagle/bin

WORKDIR /tmp/eagle/bin/
