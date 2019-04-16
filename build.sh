#!/bin/bash

rm -rf public
hugo
git add --all
git commit -m "site update $(date)"
git push