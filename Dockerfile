FROM ubuntu:16.04

MAINTAINER FOSSEE <roh.mhatre@gmail.com>

RUN apt-get update -y && apt-get install -y git libevent-dev python-dev python-setuptools  python-pip && pip install gevent flask subprocess32 beautifulsoup4

RUN apt-get build-dep scilab -y && mkdir /Site && cd /Site && git clone https://github.com/FOSSEE/scilab_for_xcos_on_cloud.git && cd scilab_for_xcos_on_cloud &&  ./configure --disable-static-system-lib && make -j4

VOLUME /Site/

EXPOSE 8001

WORKDIR /Site/xcos_on_cloud

CMD [ "python" , "SendLog.py" ] 
