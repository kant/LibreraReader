#!/usr/bin/env bash

./link_to_mupdf_1.11.sh

cd ../

./gradlew assembleBetaRelease
./gradlew assembleLibreraRelease
./gradlew assembleLibreraPRO
./gradlew assembleEbookaRelease
./gradlew assembleTts_readerRelease


./gradlew copyApks -Pbeta
./gradlew -stop

cd Builder
./remove_all.sh
./install_all.sh
./clear-cache.sh