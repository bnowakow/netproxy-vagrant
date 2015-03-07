#!/bin/bash

if [ "$#" -ne 4 ]; then
    echo "Not enough number of parameters"
    echo "Usage: $0 aws_access_key_id aws_secret_access_key aws_keypair_name aws_private_key_path"
    exit
fi

export aws_access_key_id="$1"
export aws_secret_access_key="$2"
export aws_keypair_name="$3"
export aws_private_key_path="$4"

# vagrant destroy
vagrant up --provider=aws
# vagrant provision
# vagrant ssh
