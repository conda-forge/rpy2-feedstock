#!/bin/bash

set -euxo pipefail

export CFLAGS="${CFLAGS} -std=c11"
export LDFLAGS="-L${PREFIX}/lib/R/lib ${LDFLAGS}"
export CPPFLAGS="-I${PREFIX}/lib/R/include ${CPPFLAGS}"

${PYTHON} -m pip install ./rpy2-rinterface/ ./rpy2-robjects/ . -vv
