.SILENT:

SRC_PATH := ./src
SRC_FILES := $(shell ls ${SRC_PATH})
BUILD_PATH := ./build


build: ${SRC_PATH}/*
	for i in ${SRC_FILES}; do \
		go build -o ${BUILD_PATH}/$$i ${SRC_PATH}/$$i; \
	done
