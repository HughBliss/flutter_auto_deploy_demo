#!/bin/bash


set -e
set -x


# поднимаем версию пакета
VER=$(cider bump build)

# коммитим версию пакета и отправляем на ветку ci-cd
git add .
git commit -m "bump version to $VER"
git push origin ci-cd
