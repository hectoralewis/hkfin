FROM ubuntu:22.04

ADD index.html ./index.html
ADD hkfin ./hkfin
ADD run.sh ./run.sh

RUN chmod +x ./hkfin \
  && chmod +x ./run.sh \
  && apt-get update \
  && apt-get -y install python-is-python3 wget ca-certificates

CMD ./run.sh
