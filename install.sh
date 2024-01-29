#!/usr/bin/env bash
 
[ -r ./.functions ] && . ./.functions

datestamp="$(date +%s)"
files=$(findDotFiles ./)
scriptDirectory="$( cd "$( dirname "${BASH_SOURCE[0]}" )" >/dev/null 2>&1 && pwd )"

while read -r line; do
  [ -L ~/${line} ] && unlink ~/${line}  || mkdir -p ~/dotfile_backup && mv ./${line} ~/dotfile_backup.${datestamp}/${line}.${datestamp}
   ln -sf $(expandPath ${scriptDirectory}/${line}) $(expandPath ~/${line})
done <<< "${files}"
