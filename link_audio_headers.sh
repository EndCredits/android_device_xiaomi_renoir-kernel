#!/usr/bin/env

cd ./kernel-headers/linux/
audio_linux_filelist=($(ls ../audio/linux/))
for files in ${audio_linux_filelist[*]} ; do
    echo "Linking $files"
    ln -s ../audio/linux/$files $files
done

cd ../sound
sound_filelist=($(ls ../audio/sound/))
for files in ${sound_filelist[*]} ; do
    echo "Linking $files"
    ln -s ../audio/sound/$files $files
done
