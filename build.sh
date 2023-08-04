#!/bin/bash


set -e
set -x


# поднимаем версию пакета
VER=$(cider bump build)

# устанавливаем переменные окружения из файла .env
source .env

# собираем файл архива
flutter build ios --release --no-codesign

# запускаем сборку и публикацию пакета
cd ios && fastlane beta
