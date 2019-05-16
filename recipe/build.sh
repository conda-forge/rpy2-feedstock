#!/bin/bash

CFLAGS="-I${PREFIX}/include ${CFLAGS}" "${PYTHON}" -m pip install . --no-deps -vv
