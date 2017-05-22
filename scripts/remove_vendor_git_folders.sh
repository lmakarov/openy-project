#!/usr/bin/env bash
# Remove .git folders from vendor folder to avoid git submodule issues for some
# workflows.
FOLDERS=('vendor' 'docroot/library' 'docroot/modules/contrib')

for folder in $FOLDERS
do
  echo  "Removing .git folders from $folder folder to avoid possible git issues."
  find $folder -name ".git" -exec rm -rf {} \; > /dev/null 2>&1
done
