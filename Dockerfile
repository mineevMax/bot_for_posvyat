FROM debian:bullseye-slim

RUN apt update && apt install -y python3 python3-pip

RUN pip3 install pyTelegramBotAPI

COPY bot_text_pos.py /bot_text_pos.py

EXPOSE 8000

CMD ["/usr/bin/python3", "bot_text_pos.py"]
