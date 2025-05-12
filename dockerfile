FROM maptiler/tileserver-gl:latest

WORKDIR /data

RUN apt-get update \
 && apt-get install -y --no-install-recommends python3-pip wget \
 && pip3 install --no-cache-dir gdown \
 && rm -rf /var/lib/apt/lists/*

ARG GDRIVE_FILE_ID=1M0vTkbQy_UJ1vrMgoVCMeZmz10PnDC13

RUN gdown --id "$GDRIVE_FILE_ID" --output /data/2017.mbtiles

COPY ./ /data

EXPOSE 8080
CMD ["--verbose"]
