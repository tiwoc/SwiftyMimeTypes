#!/bin/bash
set -o errexit -o nounset -o pipefail
which shellcheck > /dev/null && shellcheck "$0"

SCRIPTPATH="$(cd "$(dirname "$0")"; pwd)"

APACHE_MIME_TYPES_URL="http://svn.apache.org/repos/asf/httpd/httpd/trunk/docs/conf/mime.types"
FILEPATH="$SCRIPTPATH/SwiftyMimeTypes/Assets/mime.types"

# sed removes lines starting with # and collapses consecutive whitespace chars to a single space
curl "$APACHE_MIME_TYPES_URL" | sed -E '/#.*$/d;s/[[:space:]]+/ /g' > "$FILEPATH"
