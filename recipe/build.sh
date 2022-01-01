#!/bin/bash

# https://github.com/conda-forge/rpy2-feedstock/issues/79#issuecomment-1000920911
if [[ "${target_platform}" == "osx-arm64" ]]; then
  export RPY2_CFFI_MODE="API"
fi

export LDFLAGS="${LDFLAGS} -Wl,-rpath,$PREFIX/lib/R/lib"
export LINKFLAGS=""

CFLAGS="-I${PREFIX}/include ${CFLAGS}" "${PYTHON}" -m pip install . --no-deps -vv
