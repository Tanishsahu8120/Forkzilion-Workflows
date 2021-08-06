branch=pruh
git clone -b $branch https://github.com/AbOuLfOoOoOuF/ProjectFizilion /root/Forkzilion
cp ultroid/.env /root/TeamUltroid/.env
cd /root/TeamUltroid
docker build . --rm --force-rm --compress --pull --file Dockerfile -t ultroid
docker run --privileged --env-file .env --rm -i ultroid
