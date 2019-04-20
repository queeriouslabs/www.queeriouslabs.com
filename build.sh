#!/bin/bash

rm -rf public
hugo
rm -rf deployed || true
mv public deployed
