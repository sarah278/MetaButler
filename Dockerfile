FROM python:3.10-slim-buster

WORKDIR /app

#RUN apt update
#RUN apt install git -y

COPY requirements.txt requirements.txt
RUN pip3 install -r requirements.txt

#RUN pip install git+https://github.com/python-telegram-bot/ptbcontrib.git@main

COPY . .

CMD [ "python3", "-m" , "MetaButler"]
