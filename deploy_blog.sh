scp -r blog/public/* moonswing:/var/www/html
echo 'Done!'

#copy except .DS_Store file
shopt -s extglob
cp -rf !(.DS_Store) ./computbiol.github.io 
shopt -u extglob

#push to github
cd ./computbiol.github.io
git add -A
git commit -m "Update"
git push origin master
