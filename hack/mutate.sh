#!/usr/bin/env bash

set -euo pipefail

main() {
    index_html=$1

    gsed -i \
        -e 's#src="/js/#src="../js/#g' \
        -e 's#href="/css/#href="../css/#g' \
        -e '/favicon\.ico/d' \
        "${index_html}"
}

main "$@"
