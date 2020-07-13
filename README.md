# Youtube Download Script

Make sure to install ffmpeg and python
```
sudo apt install ffmpeg python
```
A script for downloading content from Youtube
```
wget https://raw.githubusercontent.com/BeanGreen247/Youtube-Download-Script/master/youtubetomp3mp4.sh
sudo wget -O /usr/bin/youtube-dl https://yt-dl.org/downloads/latest/youtube-dl
```
Small tweaks
```
sudo chmod +x /usr/bin/youtube-dl
sudo chown 777 /usr/bin/youtube-dl
```
To run the script 

**DO NOT RUN AS SUDO, or files will be stored in /root directory**
```
bash youtubetomp3mp4.sh
```
