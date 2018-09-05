#!/bin/sh

echo 'Deploying Doxygen code documentation...'

if [ -d "/root/html" ] && [ -f "/root/html/index.html" ];
then
	# move into home directory first
	cd
	# add remote ssh-key to key-storage
	# first add remote host to known hosts
	ssh-keyscan -t rsa -p 10023 $DEPLOY_HOST >> ~/.ssh/known_hosts 2> /dev/null
	# decrypt private shh key
	openssl aes-256-cbc -K $decrypted_key -iv $encrypted_iv -in $DECRYPTED_SSH_KEY -out id_rsa -d
	# start ssh-agent and add the key
	eval "$(ssh-agent -s)"
	chmod 600 id_rsa
	ssh-add id_rsa

	echo "Uploading.."
# 	# upload site
	rsync -rq --delete --exclude=".*" -e "ssh -p 10023" html/ $DEPLOY_USER@$DEPLOY_HOST:$DEPLOY_PATH
else
    echo '' >&2
    echo 'Warning: No documentation (html) files have been found!' >&2
    echo 'Warning: Not going to push the documentation to docs.e5.physik.tu-dortmund.de' >&2
    exit 1
fi
