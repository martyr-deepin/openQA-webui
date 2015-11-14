all: build

build:
	bash -ex scripts/prepare_container.sh
	bash -ex scripts/prepare_webui.sh
	bash -ex scripts/prepare_db.sh
