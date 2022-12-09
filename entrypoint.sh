#!/bin/bash

hub release create -a ./app/build/outputs/apk/release/app-release-unsigned.apk -m "${GITHUB_REF##*/}" ${GITHUB_REF##*/}