BUILD_DIR := .esphome/build/deskup-pro/.pioenvs/deskup-pro

.PHONY: all build build-c3 build-c6 clean

all:
	make build
	make build-c3
	make build-c6

build:
	esphome compile deskup-pro-controller.yaml
	cp $(BUILD_DIR)/firmware.factory.bin ./firmware/deskup-pro.factory.bin
	cp $(BUILD_DIR)/firmware.ota.bin ./firmware/deskup-pro.ota.bin
	md5 -q ./firmware/deskup-pro.ota.bin > ./firmware/firmware.md5
	sed -i '' "s/\"md5\": \"[a-f0-9]*\"/\"md5\": \"$$(md5 -q ./firmware/deskup-pro.ota.bin)\"/" manifest.json

build-c3:
	esphome compile deskup-pro-controller-c3.yaml
	cp $(BUILD_DIR)/firmware.factory.bin ./firmware-c3/deskup-pro.factory.bin
	cp $(BUILD_DIR)/firmware.ota.bin ./firmware-c3/deskup-pro.ota.bin
	md5 -q ./firmware-c3/deskup-pro.ota.bin > ./firmware-c3/firmware.md5
	sed -i '' "s/\"md5\": \"[a-f0-9]*\"/\"md5\": \"$$(md5 -q ./firmware-c3/deskup-pro.ota.bin)\"/" manifest-c3.json

build-c6:
	esphome compile deskup-pro-controller-c6.yaml
	cp $(BUILD_DIR)/firmware.factory.bin ./firmware-c6/deskup-pro.factory.bin
	cp $(BUILD_DIR)/firmware.ota.bin ./firmware-c6/deskup-pro.ota.bin
	md5 -q ./firmware-c6/deskup-pro.ota.bin > ./firmware-c6/firmware.md5
	sed -i '' "s/\"md5\": \"[a-f0-9]*\"/\"md5\": \"$$(md5 -q ./firmware-c6/deskup-pro.ota.bin)\"/" manifest-c6.json

clean:
	rm -rf .esphome/build/deskup-pro
