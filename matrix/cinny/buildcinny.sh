if [ -d "./temprepo" ] 
then
    cd temprepo
    git pull https://github.com/cinnyapp/cinny.git
    cd ..
else
    git clone https://github.com/cinnyapp/cinny.git temprepo
fi
rm temprepo/config.json
cp config.json temprepo/config.json
cd temprepo
docker build -t outerlan/cinny:latest .
rm -rf temprepo