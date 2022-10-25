# Youtube Download Script

Projects used 
* https://github.com/yt-dlp/yt-dlp
  * A youtube-dl fork with additional features and fixes 

Make sure to install ffmpeg and python
```
sudo apt install ffmpeg python
```
A script for downloading content from Youtube
```
sudo curl -L https://github.com/yt-dlp/yt-dlp/releases/latest/download/yt-dlp -o /usr/local/bin/youtube-dl
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
want to download one song at a time? well here you go
```
/usr/local/bin/youtube-dl --hls-prefer-ffmpeg --cookie cookie.txt -i --format best --extract-audio --audio-format mp3 -o "%(title)s.%(ext)s" <SongLinkUrlHerePlease>
```
