#/bin/bash
#sets aliases for transfer.sh service
#uses async gpg for crypto

echo "" >> ~/.bashrc

echo '''upload() { tar -cz $1 | gpg -ac -o- | curl -X PUT --upload-file "-" https://transfer.sh/$(basename $1); }''' >> ~/.bashrc

echo "alias upload=upload" >> ~/.bashrc

echo '''download() { curl $1 | gpg -o- > $2.tar.gz; }''' >> ~/.bashrc

echo "alias download=download" >> ~/.bashrc

echo "All done!"
echo "See You Next Time Space Cowboy..."
echo "source ~/.bashrc"