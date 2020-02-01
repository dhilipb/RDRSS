FROM python:3.8.1-alpine3.10
RUN "pip3 install requests feedparser argparse"

ENV RSS_FILE
ENV RD_TOKEN

RUN RDRSS.py --rss $RSS_FILE
RUN RDRSS.py --token $TOKEN

