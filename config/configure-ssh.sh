#!/usr/bin/env bash
ssh-keygen -t ed25519 -C "wojciechdrabczyk@icloud.com"
eval "$(ssh-agent -s)"
cat ~/.ssh/id_ed25519.pub
