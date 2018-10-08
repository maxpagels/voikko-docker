FROM python:3.6.2-stretch

RUN DEBIAN_FRONTEND=noninteractive \
    && apt-get update \
    && apt-get install -y voikko-fi python-libvoikko

RUN cp /usr/lib/python3/dist-packages/libvoikko.py ./libvoikko.py

COPY app.py .

ENTRYPOINT ["python", "./app.py"]
CMD ["./app.py"]

