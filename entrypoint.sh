#!/bin/sh

cd opt
cp -r /blog/* .

git config --global user.email "${USER_EMAIL}"
git config --global user.name "${USER_NAME}"
yarn deploy
