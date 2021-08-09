branch=pruhsuperlight
git clone -b $branch https://github.com/DunggVN/ProjectFizilion /root/Forkzilion
cp forkzilion/config.env /root/Forkzilion/config.env
cd /root/Forkzilion
docker build . --rm --force-rm --compress --pull --file Dockerfile -t forkzilion
docker run --privileged --env-file config.env --rm -i forkzilion
