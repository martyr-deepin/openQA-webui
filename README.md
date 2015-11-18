# deepin-openqa-webui
**Description**: This project provides openQA server running on https://openqa.deepin.io, which build with Docker container.  
**Thanks**: Thanks to [os-autoinst](https://github.com/os-autoinst) group for providing such a good automated testing framework.

## dependence
docker 1.8+ ([Docker Installation](http://docs.docker.com/engine/installation/))  
docker image: deepin/openqa-base ([openQA-base](https://github.com/choldrim/deepin-openqa-base-runner))

## Usage
#### 0. Environment preparation
Create `/data` dir as the default workspace  
```shell
sudo mkdir -p /data
sudo chmod 777 /data
```

#### 1. clone with submodules
```shell
git clone --recursive https://github.com/choldrim/deepin-openqa-webui
```

#### 2. build webui container
```shell
cd deepin-openqa-webui
make build
```

#### 3. cp some tools to your PATH
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
If you don't use this service any more, just run `docker rm -f deepin/openqa-webui` to remove it.


### Relative
[openQA](https://github.com/os-autoinst/openQA)  
[os-autoinst](https://github.com/os-autoinst/os-autoinst)  
[deepin-openqa-base-runner](https://github.com/choldrim/deepin-openqa-base-runner)  
[deepin-openqa-webui](https://github.com/choldrim/deepin-openqa-webui)  
[deepin-openqa-worker](https://github.com/choldrim/deepin-openqa-worker)  
[deepin-openqa-task-trigger](https://github.com/choldrim/deepin-openqa-task-trigger)  
