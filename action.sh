branch=pruh
git clone -b $branch https://github.com/AbOuLfOoOoOuF/ProjectFizilion /root/Forkzilion
cp forkzilion/config.env /root/Forkzilion/config.env
cd /root/Forkzilion
docker build . --rm --force-rm --compress --pull --file Dockerfile -t projectfizilion
docker run --privileged --env-file config.env --rm -i projectfizilion
