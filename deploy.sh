#!/bin/bash

hugo
cp -r ./public/* ../odhondt.github.io/
cp .gitignore ../odhondt.github.io/
cd ../odhondt.github.io/
git add .
git commit -m "website update on `date`"
git push origin master

