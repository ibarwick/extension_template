#!/bin/bash

# Use this script to rename the extension to something
# more useful; provide the new name as first argument
# (it must be a valid PostgreSQL name string; this is not
# checked!)

if [ $# -lt 1 ]; then
  echo "Please provide the new extension name as first argument"
  exit 1
fi

NEW_NAME=$1

# Convert occurences of 'extension_template' in source files to the new
# name (do this first while we're sure what the files are)

FILES=(
  extension_template--0.1.sql
  extension_template.c
  extension_template.control
  Makefile
)

for FILE in ${FILES[@]}; do
  sed -i "s/extension_template/$NEW_NAME/g" $FILE
done

# Rename files as appropriate

rename extension_template $NEW_NAME extension_template*

