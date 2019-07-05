FROM python:3

WORKDIR /usr/src/app/wordcloud

RUN pip install --no-cache-dir wordcloud
