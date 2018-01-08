#Run this file from the directory that contains subdirectories to be moved to plex Movie directory.
#Each directory should contain a properly named video file
#Filebot is recommended for renaming files

#change this to your plex movie directory
dest="I:/media/plex/Media/Movies/"

#change this to the location where the script files are stored
scriptDir=$SCRIPTS

python $scriptDir/dir_to_plex.py
python $scriptDir/mov_to_plex.py "$dest" 
