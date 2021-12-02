#!/usr/bin/env bash

openssl aes-256-cbc -k "$password" -in _capedwarfKey.enc -d -a -out _capedwarfKey
eval $(ssh-agent)
ssh-add -D
chmod 600 _capedwarfKey
ssh-add ./_capedwarfKey
