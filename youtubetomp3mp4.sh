#!/bin/bash

echo "This script should not be run as sudo, because the files will be exported into the /root directory instead of the home directory."
mkdir ~/Converted_Youtube &> /dev/null
format=0
echo "Pick a format you want to convert to:"
echo "mp3 (for MP3), mp4 (for MP4)"
read format
if [ $format == "mp3" ]
  then
  mkdir ~/Converted_Youtube/mp3 &> /dev/null
  cd ~/Converted_Youtube/mp3/
  echo "Enter Download Video URL you want to convert to mp3 : "
  read link
  /usr/local/bin/youtube-dl --hls-prefer-ffmpeg --cookies-from-browser chrome -i -f b --extract-audio --audio-format mp3 -o "%(title)s.%(ext)s" $link
  echo "Done converted files are saved in ~/Converted_Youtube/mp3/"
fi
if [ $format == "mp4" ]
  then
  mkdir ~/Converted_Youtube/mp4 &> /dev/null
  cd ~/Converted_Youtube/mp4/
  echo "Enter Download Video URL you want to convert to mp4 : "
  read link
  /usr/local/bin/youtube-dl --hls-prefer-ffmpeg --cookies-from-browser chrome -i --format mp4 -o "%(title)s.%(ext)s" $link
  echo "Done converted files are saved in ~/Converted_Youtube/mp4"
fi

echo "Script by Tomas Mozdren @ beangreen247.xyz 2024"

cd
