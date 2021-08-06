branch=pruh
git clone -b $branch https://github.com/AbOuLfOoOoOuF/ProjectFizilion /root/Forkzilion
cp projectfizilion/sample_config.env /root/Forkzilion/sample_config.env
cd /root/Forkzilion
docker build . --rm --force-rm --compress --pull --file DOCKERFILE -t projectfizilion
docker run --privileged --env-file .env --rm -i projectfizilion
