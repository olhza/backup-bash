#!/bin/bash

if [[ "$#" -ne 2 ]] || [[ -z $1 ]] || [[ -z $2 ]] 
then
	echo "Usage: $0 source_dir destination_dir"
	exit
fi

source=$1
source_name=`basename "$source"`.tar.gz
dest=$2/"$source_name"
dest_dir=`dirname "$dest"`
current_dir=`pwd`


tar -zcf "$dest" "$source"

# change directory to facilitate future integrity checks.
cd "$dest_dir"
md5sum "$source_name" > "$source_name.md5"
sha1sum "$source_name" > "$source_name.sha1"
cd "$current_dir"

