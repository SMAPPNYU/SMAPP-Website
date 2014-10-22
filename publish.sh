#!/bin/bash

# Simple script to rsync web files to web servers

# rsync -av <Source files> <username@host:location>
# rysnc options:
#   -a  archive. send files in archive mode
#   -r  recursive. recurse into directories
#   -v  verbose
#   -u  update. skip files that are newer on the receiver
#   -z  compress. compress files during transfer

rsync -arvuz . dpb3@wss1.bio.nyu.edu:/var/www/sites/smapp.nyu.edu --exclude '.git' --exclude 'index.html.bak' --exclude 'test.html' --exclude 'publish.sh'
