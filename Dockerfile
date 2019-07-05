FROM python:3

WORKDIR /usr/src/app/wordcloud

RUN pip install --no-cache-dir wordcloud

CMD [ "wordcloud_cli", "--text", "mytext.txt", "--imagefile", "wordcloud.png" ]