branch=master
git clone -b $branch https://github.com/UsergeTeam/Userge /root/UsergeTeam
cp ultroid/.env /root/UsergeTeam/config.env
cd /root/UsergeTeam
docker build . --rm --force-rm --compress --pull --file Dockerfile -t kai
docker run --privileged --env-file config.env --rm -i kai
