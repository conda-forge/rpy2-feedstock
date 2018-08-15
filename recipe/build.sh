#!/bin/bash

if [ "$(uname)" == "Darwin" ]; then
    # export LDFLAGS="${LDFLAGS} -headerpad_max_install_names"
    export LDFLAGS="-mmacosx-version-min=${MACOSX_VERSION_MIN}"
    export LDFLAGS="${LDFLAGS} -lc++"
    export LDFLAGS="${LDFLAGS} -Wl,-rpath,$PREFIX/lib" 
    export LINKFLAGS="${LDFLAGS}"
fi

export LDFLAGS=""
export LINKFLAGS=""

CFLAGS="-I${PREFIX}/include ${CFLAGS}" "${PYTHON}" -m pip install . --no-deps --ignore-installed --no-cache-dir -vvv
