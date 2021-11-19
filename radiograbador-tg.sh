#!/bin/bash

BASEDIR=$(dirname $0)

DATE=$(date +"%d%m%Y")

FILENAME="Nombre_$DATE.mp3"

OUTPUT="$BASEDIR/output/$FILENAME"

TMP="/tmp/$FILENAME"

LOG="$BASEDIR/last.log"

URL="http://URL_DE_LA_RADIO"

TIMEOUT="121m" # Duracion del programa. 

T_BOT_TOKEN="TOKEN_BOT_TELEGRAM"

T_CHANNEL_ID="ID_CANAL_TELEGRAM"



# Record

timeout $TIMEOUT curl -m 7269 --output $OUTPUT $URL > $LOG 2>&1

# Compress 

ffmpeg -i $OUTPUT -b:a 32000 $TMP >> $LOG 2>&1

# Telegram

curl -F document=@"$TMP" https://api.telegram.org/bot$T_BOT_TOKEN/sendDocument?chat_id=$T_CHANNEL_ID >> $LOG # 2>&1

# Clean 

rm $TMP
