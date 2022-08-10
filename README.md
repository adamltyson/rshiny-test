# rshiny-test
Test deployment of a basic R Shiny app


## Installation
#### Docker (assuming Ubuntu 20.04)

```bash
sudo apt-get update
sudo apt-get install ca-certificates curl gnupg lsb-release
curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo gpg --dearmor -o /usr/share/keyrings/docker-archive-keyring.gpg
echo "deb [arch=$(dpkg --print-architecture) signed-by=/usr/share/keyrings/docker-archive-keyring.gpg] https://download.docker.com/linux/ubuntu $(lsb_release -cs) stable" | sudo tee /etc/apt/sources.list.d/docker.list > /dev/null
sudo apt-get update
sudo apt-get install docker-ce docker-ce-cli containerd.io
sudo usermod -aG docker $USER
```

#### Docker-compose (also assuming Ubuntu 20.04)
```bash
sudo curl -L "https://github.com/docker/compose/releases/download/1.29.2/docker-compose-$(uname -s)-$(uname -m)" -o /usr/local/bin/docker-compose

sudo chmod +x /usr/local/bin/docker-compose

## Add to .bashrc if need to get around - https://github.com/docker/compose/issues/1339
alias docker-compose='TMPDIR=/var/tmp/ docker-compose'
```
## Set up

#### Download app & container configuration
```bash
git clone https://github.com/adamltyson/rshiny-test
```

## To run
#### Start container
```bash
cd rshiny-test
docker-compose up -d
```

