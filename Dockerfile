FROM python:3

RUN apt update && apt upgrade -y
RUN apt install git -y
COPY requirements.txt /requirements.txt

RUN cd /
RUN pip3 install -U pip && pip3 install -U -r requirements.txt
RUN mkdir /Midukki-RoBoT

WORKDIR /Midukki-RoBoT

COPY midukki.sh /midukki.sh

CMD ["/bin/bash", "/midukki.sh"]
