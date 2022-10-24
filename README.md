# Youtube Download Script

Make sure to install ffmpeg and python
```
sudo apt install ffmpeg python
```
A script for downloading content from Youtube
```
sudo wget https://yt-dl.org/downloads/latest/youtube-dl -O /usr/local/bin/youtube-dl
sudo chmod a+rx /usr/local/bin/youtube-dl
```
```
wget https://raw.githubusercontent.com/BeanGreen247/Youtube-Download-Script/master/youtubetomp3mp4.sh
```
generate the needed cookies.txt file

make sure that you are logged into google and youtube in your default browser

next run these commands in the terminal in the scripts directory
```
curl -b cookiefile.txt --cookie-jar newcookiefile.txt 'https://youtube.com'
curl -b cookiefile.txt --cookie-jar newcookiefile1.txt 'https://www.google.com'
cat newcookiefile* > cookie.txt
```

To run the script 

**DO NOT RUN AS SUDO, or files will be stored in /root directory**
```
bash youtubetomp3mp4.sh
```
