FROM jokerhacker/zerotwo-python:latest

RUN  git clone https://github.com/Black-Bulls-Bots/zerotwobot -b main  /root/hinamibot
RUN  mkdir  /root/hinamibot/bin/
WORKDIR /root/hinamibot/

COPY  ./zerotwobot/elevated_users.json* ./hinamibot/config.py* /root/hinamibot/hinamibot/
RUN pip3 install -r requirements.txt

CMD ["python3", "-m", "himamibot"]
