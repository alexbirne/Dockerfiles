FROM ubuntu:xenial

ARG DECRYPTED_KEY

RUN apt-get update -q && apt-get install -y openssh-client rsync openssl
RUN mkdir -p ~/.ssh

ENV DEPLOY_HOST host_to_deploy_on
ENV DEPLOY_USER deploying_user
ENV DEPLOY_PATH path_on_which_to_deploy_on_host
ENV DECRYPTED_SSH_KEY decrypted_sshkey
ENV decrypted_key decription_key
ENV encrypted_iv decription_iv

ADD ./deploy_doxygen.sh /deploy_doxygen.sh
ADD html /root/html
ADD $DECRYPTED_KEY /root/$DECRYPTED_KEY

ENTRYPOINT ["/bin/bash","/deploy_doxygen.sh"]
