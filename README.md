# deepin-openqa-webui
**Description**: this project is the openQA server running on https://openqa.deepin.io  
**Thanks**: Thanks to [os-autoinst](https://github.com/os-autoinst) group for providing such a good automated testing framework.

## dependence
docker 1.8+ ([Docker Installation](http://docs.docker.com/engine/installation/))  
docker image: deepin/openqa-base ( [openQA-base](https://github.com/choldrim/deepin-openqa-base-runner) )

## Usage
#### 0. environment preparation
(1) prepare the `/data` dir for the default workspace  
```shell
sudo mkdir -p /data
sudo chmod 777 /data
```

#### 1. clone the code
```shell
git clone --recursive https://github.com/choldrim/deepin-openqa-webui
```

#### 2. prepare the webui container
```shell
cd deepin-openqa-webui
make build
```
#### 3. cp the tools to your PATH
```shell
sudo make install
```

## Usage
#### 1. start webui
```shell
openqa-webui-start
```

#### 2. stop webui
```shell
openqa-webui-stop
```

## Uninstall
If you don't use it any more, just run `docker rm -f deepin/openqa-webui` to remove it.
