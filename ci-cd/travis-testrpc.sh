#!/bin/bash

set -e
echo "Start Ganache"
npm run ganache > ganache.log &

echo "Select resources"
npm run select-resources

echo "Start compiling"
npm run compile

echo "Start testing"
time npm run test
