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
in `--cookies-from-browser firefox` chagne `firefox` to your pefered browser

make sure that you are logged into google, youtube and youtube music in your defined browser

To run the script 

**DO NOT RUN AS SUDO, or files will be stored in /root directory**
```
bash youtubetomp3mp4.sh
```
want to download one song at a time? well here you go
```
/usr/local/bin/youtube-dl --hls-prefer-ffmpeg --cookies-from-browser firefox -i -f b --extract-audio --audio-format mp3 -o "%(title)s.%(ext)s" <SongLinkUrlHerePlease>
```
in `--cookies-from-browser firefox` chagne `firefox` to your pefered browser
