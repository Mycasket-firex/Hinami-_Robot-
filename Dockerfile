FROM jokerhacker/zerotwo-python:latest

RUN rm -rf  /root/hinamibot/
RUN git clone https://github.com/Mycasket-firex/Hinami_Robot/ -b Ghoul /root/hinamibot
RUN mkdir  /root/hinamibot/bin/
RUN export DISABLE_CACHE=true
WORKDIR /root/hinamibot/

COPY ./hinamibot/elevated_users.json* ./hinamibot/config.py* /root/hinamibot/hinamibot/
RUN pip3 install -r requirements.txt --no-cache-dir 

CMD ["python3", "-m", "himamibot"]
