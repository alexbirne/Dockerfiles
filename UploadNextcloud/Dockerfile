FROM ubuntu:xenial

RUN apt-get update \
    && apt-get install -y curl

ENV UPLOAD_URL nextcloud_upload_url
ENV UPLOAD_FILE file_to_upload
ENV UPLOAD_PASSWORD password_to_upload

RUN mkdir /mnt/UploadDir

ADD ./upload_nextcloud.sh /upload_nextcloud.sh

ENTRYPOINT ["/bin/bash","/upload_nextcloud.sh"]


# https://nextcloud.birnkraut.org/s/4fNfy9WCMEzDt7A


# curl -k -T test.txt -u "4fNfy9WCMEzDt7A":"Fritter0_result_Numeric_exes5_unpack_beman_loci1_9nil" -H "X-Requested-With: XMLHttpRequest" "https://nextcloud.birnkraut.org/public.php/webdav/test.txt"