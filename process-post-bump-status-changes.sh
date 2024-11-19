#!/bin/bash

set -eu -o pipefail

# Remove all Pending-Delete bundles
for fname in $(grep -l '# \[STATUS\]: Pending-Delete' bundles/*); do
    rm "${fname}"
done

# Empty all Depreated bundles and them set them to Pending-Delete
for fname in $(grep -l '# \[STATUS\]: Deprecated' bundles/*); do
    sed -i '/^[^#]/d' "${fname}"
    sed -i 's/# \[STATUS\]: Deprecated/# \[STATUS\]: Pending-Delete/' "${fname}"
    printf '\nfilesystem\n' >> "${fname}"
done
