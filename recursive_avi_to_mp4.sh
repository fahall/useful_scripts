
mkdir ../delete_me
for subdir in "."/*
do
  if [[ -d "$subdir" ]]
  then
    for file in "$subdir"/*
    do
		if [[ $file == *".avi"* ]]
		then
			ffmpeg -i "$file" "${file%.*}.mp4"
			echo "$file"
			mv $file ../delete_me/
		fi 
    done
  fi
done

