#!/bin/bash

echo "Building from script.."
npm ci
npm run build
echo "..build finished!"