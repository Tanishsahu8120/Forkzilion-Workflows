branch=pruh
git clone -b $branch https://github.com/AbOuLfOoOoOuF/ProjectFizilion /root/Forkzilion
cp projectfizilion/.env /root/Forkzilion/.env
cd /root/Forkzilion
docker build . --rm --force-rm --compress --pull --file Dockerfile -t projectfizilion
docker run --privileged --env-file .env --rm -i projectfizilion
