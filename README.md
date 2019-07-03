# Usage:

Run wordcloud_cli using ./wordcloud as the working directory like this:

```
docker run -it --rm -v $(pwd)/wordcloud:/usr/src/app/wordcloud --name running-wordcloud-app michaelking/word_cloud wordcloud_cli --text mytext.txt --imagefile wordcloud.png
```

Ensure the text for your wordcloud is in ./wordcloud/mytext.txt