## hckops/htb-postman

Requirements
```bash
# install pip3
sudo apt install -y python3-pip

# install virtualenv globally 
sudo pip3 install virtualenv
```

Setup
```bash
cd docker/htb/postman

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
docker build -t hckops/htb-postman docker/htb/postman

# run
docker run --rm -it --name htb-postman hckops/htb-postman
```
