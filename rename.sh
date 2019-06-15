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

# Attempt to find a GNU-like sed
SED=`which gsed 2>/dev/null`

if [ "$SED" = "" ]; then
	SED=`which sed 2>/dev/null`
fi

if [ "$SED" = "" ]; then
    echo "unable to find sed"
    exit 1
fi


# Convert occurences of 'extension_template' in source files to the new
# name (do this first while we're sure what the files are)

FILES=(
  extension_template--0.1.sql
  extension_template.c
  extension_template.control
  test/sql/extension_template.sql
  test/expected/extension_template.out
  Makefile
)

for FILE in ${FILES[@]}; do
  $SED -i "s/extension_template/$NEW_NAME/g" $FILE
done

# Rename files as appropriate

mv extension_template.c $NEW_NAME.c
mv extension_template--0.1.sql $NEW_NAME--0.1.sql
mv extension_template.control $NEW_NAME.control
mv test/sql/extension_template.sql test/sql/$NEW_NAME.sql
mv test/expected/extension_template.out test/expected/$NEW_NAME.out
