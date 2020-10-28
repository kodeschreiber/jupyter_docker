FROM ubuntu:20.04
ENV DEBIAN_FRONTEND=noninteractive
RUN apt update
RUN apt install -y apt-utils
RUN apt install -y git 
RUN apt install -y python3
RUN apt install -y python3-pip
RUN apt install -y firefox
RUN apt install -y wmctrl
RUN pip3 install jupyterlab
RUN useradd -ms /bin/bash ubuntu
#COPY firefox.sh /usr/bin/firefox.sh
RUN mkdir -p /home/ubuntu
COPY sample_jupyter_config/* /home/ubuntu/.jupyter/
RUN chown -R ubuntu:ubuntu /home/ubuntu
COPY run.sh /usr/bin/run.sh
RUN chmod +x /usr/bin/run.sh
#RUN chmod +x /usr/bin/firefox.sh
USER ubuntu
WORKDIR /home/ubuntu
CMD /usr/bin/run.sh
