#!/bin/bash
#
# A Cloud build for this project expects a _SETTINGS_JSON variable to be set in the build trigger containing
# a complete and valid representation of a settings.json file needed for the the app to run in the environment
# the project represents. If that 
if [ "$#" -ne 1 ]; then
    echo "_SETTINGS_JSON argument not passed"
    exit 1
fi

if [[ -z "$1" ]]; then
  echo "_SETTINGS_JSON was blank"
  exit 1
fi
echo Creating settings.json file from _SETTINGS_JSON build trigger variable value.
echo $1 > ./settings.json