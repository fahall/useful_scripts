#!/bin/bash
#This script takes a movie as input and creates a directory with that name.
#For each frame in the movie, an image is created and placed in the directory.
#Dependencies:
# - ffmpeg
#OS:
# Linux (tested on Ubuntu)
# OSX

#shopt -s nullglob
function decomposeMovies(){
    for file in */video/*.{mp4,vob,VOB,m4v,avi,mpeg,mpg,ogg,wmv,mov,mkv,flv,webm} ; do
        local bname=$(basename "${file%%.*}")
       
        local directory="$bname"
        #mkdir "$directory"
        #mkdir "$directory/ims"
        #echo ffmpeg -i \"$file\" -qscale:v 1 "$directory"'/%06d.jpg'
        ffmpeg -i "$file" -vf fps=1 "$directory"'/ims/%06d.jpg'
        #mv "$file" "$directory"
    done
}
decomposeMovies
