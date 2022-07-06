#!/bin/bash

# Required parameters:
# @raycast.schemaVersion 1
# @raycast.title prefix.cc search
# @raycast.mode compact

# Optional parameters:
# @raycast.icon 🔗
# @raycast.packageName RDF Tools
# @raycast.argument1 { "type": "text", "placeholder": "prefix" }
# @raycast.argument2 { "type": "text", "placeholder": "return: sparql*, ns, ttl, open", "optional": true }

# Documentation:
# @raycast.author rpietzsch
# @raycast.authorURL https://github.com/rpietzsch/

NS=$(curl -s http://prefix.cc/${1}.file.ini | cut -d '=' -f 2)

if [ "${2}" = "ns" ] ; then
  echo "${NS}"
elif  [ "${2}" = "ttl" ] ; then
  echo "@prefix ${1}: <${NS}> ."
elif  [ "${2}" = "open" ] ; then
  open "${NS}"
else
  echo "PREFIX ${1}: <${NS}>"
fi

