#! /bin/bash

user="$1"
pass="$2"
infile="$3"
host=malt.labunix.uqam.ca
tmp=/home/$user/tmp/
outsuffix=.out
cat $infile | sshpass -p $pass ssh $user@$host "mkdir -p $tmp;cat > $tmp$infile;gcc $tmp$infile -Wall -o $tmp$infi    le$outsuffix; $tmp$infile$outsuffix; rm $tmp$infile $tmp$infile$outsuffix;"
