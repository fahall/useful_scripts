#! /Bin/bash
#Permanently delete large directories of files.
#This CANNOT be undone.

function shred(){
	directory=$1
	del /f/s/q $directory > nul
	rmdir /s/q $directory
}

shred $1
