#!/bin/bash
set -ex

pushd zlib
./configure &&
make -j install &&
popd

pushd jpeg
./configure &&
make -j install &&
popd

pushd qpdf
./autogen.sh &&
./configure &&
make -j install &&
popd
