# Removes a branch if the name doesnt match.
name: Android Feature Branch Wrong CI

on:
  push:
    branches:
      - 'fix/**'
      - 'cleanup/**'
      - 'bug/**'
      - 'feature/**'
      - '!main'
  workflow_dispatch:

jobs:
  cleanup:
    name: Build the project
    runs-on: ubuntu-latest
    steps:
      - name: Extract branch name
        shell: bash
        run: echo "##[set-output name=branch;]$(echo ${GITHUB_REF#refs/heads/})"
        id: extract_branch
