#! /Bin/bash

#Dependencies:
# - ffmpeg

function mkdirIfNeeded(){
	if [ ! -d "$1" ]; then
		mkdir $1
	fi
}

function scaleMovie(){
	if [ -f "$1" ]; then
		local bname=$(basename "${file%%.*}")
		ffmpeg -i "$file" -vf scale=-1:$2 -qscale:v 1 './scaled/'"$bname"'.mp4'
	fi
}
#shopt -s nullglob
function scaleMovies(){
    for file in *.{mp4,vob,VOB,m4v,avi,mpeg,mpg,ogg,wmv,mov,mkv,flv,webm} ; do
		scaleMovie "$file" "$1"
	done
}

mkdirIfNeeded "scaled"
scaleMovies 480
