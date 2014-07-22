#!/bin/bash

if [[ "$#" -ne 1 ]] || [[ -z "$1" ]]
then
	echo "Usage: $0 source"
	exit
fi

current_dir=`pwd`
source_dir=`dirname "$1"`
source_name=`basename "$1"`

cd "$source_dir"
echo "checking md5..."
md5sum -c "$source_name.md5"
echo "checking sha1..."
sha1sum -c "$source_name.sha1"
cd "$current_dir"

