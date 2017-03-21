#!/bin/bash
set -o errexit -o nounset -o pipefail
which shellcheck > /dev/null && shellcheck "$0"

SCRIPTPATH="$(cd "$(dirname "$0")"; pwd)"

APACHE_MIME_TYPES_URL="http://svn.apache.org/repos/asf/httpd/httpd/trunk/docs/conf/mime.types"
ADDITIONAL_TYPES_PATH="$SCRIPTPATH/additional.types"
FILEPATH="$SCRIPTPATH/SwiftyMimeTypes/Assets/mime.types"

function minify_types {
    # removes lines starting with # and collapses consecutive whitespace chars to a single space
    sed -E '/#.*$/d;s/[[:space:]]+/ /g'
}

curl "$APACHE_MIME_TYPES_URL" | minify_types > "$FILEPATH"
< "$ADDITIONAL_TYPES_PATH"  minify_types >> "$FILEPATH"

