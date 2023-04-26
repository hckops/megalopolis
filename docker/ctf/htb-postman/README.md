## hckops/htb-postman

[![Docker Image Version (latest by date)][image-version]][repo-url]
[![Docker Image Size (latest by date)][image-size]][repo-url]

[image-version]: https://img.shields.io/docker/v/hckops/htb-postman?sort=date&style=for-the-badge
[image-size]: https://img.shields.io/docker/image-size/hckops/htb-postman?color=orange&sort=date&style=for-the-badge
[repo-url]: https://hub.docker.com/r/hckops/htb-postman

* [Walkthrough](https://niqdev.gitbook.io/strawhatsec/htb/linux/postman)

> TODO remove defaults envs in "exploit.py"

Requirements
```bash
# install pip3
sudo apt install -y python3-pip

# install virtualenv globally 
sudo pip3 install virtualenv
```

Setup
```bash
cd docker/ctf/htb-postman

# create virtualenv
virtualenv -p $(which python3) venv

# how-to activate virtualenv
source venv/bin/activate

# verify virtualenv
which python
python --version

# how-to deactivate virtualenv
deactivate

# install new package
pip install requests

# update requirements
pip freeze > requirements.txt
```

Development
```bash
# build
docker build -t hckops/htb-postman docker/ctf/htb-postman

# run
docker run --rm -e REMOTE_IP=10.10.14.14 --name htb-postman hckops/htb-postman
```
