FROM debian:bullseye-slim

RUN apt update && apt install python3 python3-pip

RUN pip3 install pyTelegramBotAPI

COPY bot_text_pos.py /bot_text_pos.py

CMD ['python3', 'bot_text_pos.py']
