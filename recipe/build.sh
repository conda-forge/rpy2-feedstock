#!/bin/bash

if [ "$(uname)" == "Darwin" ]; then
    # export LDFLAGS="${LDFLAGS} -headerpad_max_install_names"
    export LDFLAGS="-mmacosx-version-min=${MACOSX_VERSION_MIN}"
    export LDFLAGS="${LDFLAGS} -lc++"
    export LDFLAGS="${LDFLAGS} -Wl,-rpath,$PREFIX/lib"
    export LINKFLAGS="${LDFLAGS}"
fi

# https://github.com/conda-forge/rpy2-feedstock/issues/79#issuecomment-1000920911
if [[ "${target_platform}" == "osx-arm64" ]]; then
  export RPY2_CFFI_MODE="API"
fi

export LDFLAGS="-Wl,-rpath,$PREFIX/lib/R/lib"
export LINKFLAGS=""

CFLAGS="-I${PREFIX}/include ${CFLAGS}" "${PYTHON}" -m pip install . --no-deps -vv
