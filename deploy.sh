#!/bin/bash

hugo
cp -r ./public/* ../odhondt.github.io/
cd ../odhondt.github.io/
git add .
git commit -m "updating website"
git push origin master

