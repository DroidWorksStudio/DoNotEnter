#!/bin/bash

hub release create -d --generate-notes --latest --target main -t test-release-do-not-usel ./app/build/outputs/apk/release/app-release-unsigned.apk
