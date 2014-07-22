#!/bin/bash

if [[ "$#" -ne 2 ]] || [[ -z $1 ]] || [[ -z $2 ]] 
then
	echo "Usage: $0 source_file destination_dir"
	exit
fi

source=$1
dest=$2
current_dir=`pwd`

cd "$dest"
tar -zxf "$source"
cd "$current_dir"

