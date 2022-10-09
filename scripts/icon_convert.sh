#!/bin/bash

# Converts homebrew icons to png if not (eg, .jpg)
# Run dev_setup.sh first to make sure all dependencies are satisfied

cd ../assets/images
mogrify -format png *.jpg
rm -rf *.jpg