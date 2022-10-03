FROM ubuntu:focal

RUN apt-get update \
    && apt-get install -y curl

ENV UPLOAD_URL nextcloud_upload_url
ENV UPLOAD_FILE file_to_upload
ENV UPLOAD_PASSWORD password_to_upload

RUN mkdir /mnt/UploadDir

ADD ./upload_nextcloud.sh /upload_nextcloud.sh

ENTRYPOINT ["/bin/bash","/upload_nextcloud.sh"]