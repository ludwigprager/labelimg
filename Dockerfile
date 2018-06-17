FROM ubuntu:18.04

RUN apt update && apt -y dist-upgrade
RUN apt -y install --no-install-recommends \
	git \
	pyqt5-dev-tools \
	python3-pip

RUN rm -rf /var/lib/apt/lists/*

RUN pip3 install lxml
RUN pip3 install setuptools

RUN git clone https://github.com/tzutalin/labelImg

RUN pip3 install resources requests staty

WORKDIR /images/


ENTRYPOINT ["python3", "/labelImg/labelImg.py"]
