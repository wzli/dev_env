#!/bin/bash
export IDF_PATH=/opt/esp/idf
export IDF_TOOLS_PATH=/opt/esp

set -e

. $IDF_PATH/export.sh

exec "$@"
