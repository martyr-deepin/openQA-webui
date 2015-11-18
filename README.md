# deepin-openqa-webui
openQA webui service for deepin

## dependence
docker 1.8+ ([Docker Installation](http://docs.docker.com/engine/installation/))  
docker image: deepin/openqa-base ( [openQA-base](https://github.com/choldrim/deepin-openqa-base-runner) )

## Usage
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

#### 4. start webui
```shell
openqa-webui-start   # after running this, your machine will start the deepin/openqa-webui container
```

#### when you don't use it, you can stop it by
```shell
openqa-webui-stop
```

## uninstall
After running `openqa-webui-stop`, the container won't be removed from you machine.  
If you use it any more, just running `docker rm -f deepin/openqa-webui` to remove it.
