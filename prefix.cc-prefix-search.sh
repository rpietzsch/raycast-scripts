#!/bin/bash

# Required parameters:
# @raycast.schemaVersion 1
# @raycast.title prefix.cc search
# @raycast.mode compact

# Optional parameters:
# @raycast.icon 🔗
# @raycast.packageName RDF Tools
# @raycast.argument1 { "type": "text", "placeholder": "prefix" }
# @raycast.argument2 { "type": "text", "placeholder": "return: sparql*, ns, ttl, open, vowl", "optional": true }

# Documentation:
# @raycast.author rpietzsch
# @raycast.authorURL https://github.com/rpietzsch/

NS=$(curl -s http://prefix.cc/${1}.file.ini | cut -d '=' -f 2)

# cf. https://stackoverflow.com/questions/296536/how-to-urlencode-data-for-curl-command
NS_=$(perl -MURI::Escape -e "print uri_escape(\"${NS}\");")

if [ "${2}" = "ns" ] ; then
  echo "${NS}"
elif  [ "${2}" = "ttl" ] ; then
  echo "@prefix ${1}: <${NS}> ."
elif  [ "${2}" = "open" ] ; then
  open -u "${NS}"
elif  [ "${2}" = "vowl" ] ; then
  open -u "https://service.tib.eu/webvowl/#iri=${NS_}"
else
  echo "PREFIX ${1}: <${NS}>"
fi

