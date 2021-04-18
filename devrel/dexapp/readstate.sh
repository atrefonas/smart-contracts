#!/bin/bash
# creates and updates the app
date '+keyreg-teal-test start %Y%m%d_%H%M%S'

set -e
set -x
set -o pipefail
export SHELLOPTS

WALLET=$1


# Directory of this bash program
DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" >/dev/null 2>&1 && pwd )"


#gcmd="/Users/jason/node/goal -d /Users/jason/node/data -w simplewebapp"
gcmd="/node/goal"

# Get one account from each node
ACCOUNT='WYWRYK42XADLY3O62N52BOLT27DMPRA3WNBT2OBRT65N6OEZQWD4OSH6PI'
${gcmd} app read --app-id 15369903 --guess-format --local --from $ACCOUNT
ACCOUNT2='UUEUTRNQY7RUXESXRDO7HSYRSJJSSVKYVB4DI7X2HVVDWYOBWJOP5OSM3A'
${gcmd} app read --app-id 15369903 --guess-format --local --from $ACCOUNT2