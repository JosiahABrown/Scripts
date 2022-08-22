#!/bin/python3

# pip install pytube
from pytube import YouTube
import os

# URL input
yt = YouTube(str(input(
                "Enter the URL of the video you want to download: \n >> ")))

# extract audio
video = yt.streams.filter(only_audio=True).first()

# Choose destination to save file
print("Enter the destination (blank for current directory)")
destination = str(input(">> ")) or '.'

# download file
out_file = video.download(output_path=destination)

# save file
base, ext = os.path.splitext(out_file)
new_file = base + '.mp3'
os.rename(out_file, new_file)

# result
print(f"{yt.title} has been successfully downloaded in .mp3 format.")
