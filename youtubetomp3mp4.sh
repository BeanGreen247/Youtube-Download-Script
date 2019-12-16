#!/bin/bash
format=0
echo "Pick a format you want to convert to:"
echo "1 (for MP3), 2 (for MP4)"
read format
if [ $format -eq 1 ]
then
mkdir ~/Converted_Youtube_To_MP3
cd ~/Converted_Youtube_To_MP3/
echo "Name the folder you want to save the song(s) to:"
read directory
mkdir $directory
cd $directory
echo "Enter Download Video URL you want to convert to mp3 : "
read link
youtube-dl -i --format best --extract-audio --audio-format mp3 -o "%(title)s.%(ext)s" $link
echo "Done converted files are saved in ~/Converted_Youtube_To_MP3/$directory"
fi
if [ $format -eq 2 ]
then
mkdir ~/Converted_Youtube_To_MP4
cd ~/Converted_Youtube_To_MP4/
echo "Name the folder you want to save the video(s) to:"
read directory
mkdir $directory
cd $directory
echo "Enter Download Video URL you want to convert to mp4 : "
read link
youtube-dl -i -o "%(title)s.%(ext)s" $link
echo "Done converted files are saved in ~/Converted_Youtube_To_MP4/$directory"
fi
cd
