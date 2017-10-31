#!/bin/bash

set -e

for PYTHON in ${PYTHON_VERSIONS}; do
    ls "$(cpython_path $PYTHON)/bin"
    PIP="$(cpython_path $PYTHON)/bin/pip"
    for POMEGRANATE in ${POMEGRANATE_VERSIONS}; do
        echo "Building pomegranate $POMEGRANATE for Python $PYTHON"

        $PIP install -f tmp "numpy==$NUMPY_VERSION"

        $PIP wheel -f tmp -w unfixed_wheels --no-deps \
            --no-binary pomegranate \
            "numpy==$NUMPY_VERSION" \
            "pomegranate==$POMEGRANATE"
    done
done
