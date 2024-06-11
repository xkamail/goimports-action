#!/bin/sh

cd $GITHUB_WORKSPACE

COMMAND="goimports -local $1 -l -e ."

OUTPUT=$($COMMAND 2>&1)

if [ -n "$OUTPUT" ]; then
    echo "goimports failed:"
    echo "$OUTPUT"
    exit 1
fi
echo "goimports passed"
exit 0
