#!/bin/sh

PUBSUFFIX="public.php/webdav"
HEADER='X-Requested-With: XMLHttpRequest'

FOLDERTOKEN="${UPLOAD_URL##*/s/}"
CLOUDURL="${UPLOAD_URL%/s/*}"

if [[ "$UPLOAD_PASSWORD" == "password_to_upload" ]]; then
    curl -k -T "/mnt/UploadDir/$UPLOAD_FILE" -u "$FOLDERTOKEN": -H "$HEADER" "$CLOUDURL/$PUBSUFFIX/$UPLOAD_FILE"
else
    curl -k -T "/mnt/UploadDir/$UPLOAD_FILE" -u "$FOLDERTOKEN":"$UPLOAD_PASSWORD" -H "$HEADER" "$CLOUDURL/$PUBSUFFIX/$UPLOAD_FILE"
fi
