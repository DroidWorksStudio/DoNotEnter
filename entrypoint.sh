#!/bin/bash

# hub release create -a ./app/build/outputs/apk/release/app-release-unsigned.apk -m "${GITHUB_REF##*/}" ${GITHUB_REF##*/} 
gh release create -d --generate-notes --latest --target main -t test-release-do-not-usel ./app/build/outputs/apk/release/app-release-unsigned.apk
