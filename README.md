#Usage:

Run wordcloud_cli using ./wordcloud as the working directory like this:

```
docker run -it --rm -v $(pwd)/wordcloud:/usr/src/app/wordcloud --name running-wordcloud-app wordcloud-app wordcloud_cli --text mytext.txt --imagefile wordcloud.png
```
