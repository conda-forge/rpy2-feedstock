#!/bin/bash

curl https://github.com/conda-forge/conda-forge-build-setup-feedstock/blob/master/recipe/ff_ci_pr_build.py | \
     python - -v --ci "circle" "${CIRCLE_PROJECT_USERNAME}/${CIRCLE_PROJECT_REPONAME}" "${CIRCLE_BUILD_NUM}" "${CIRCLE_PR_NUMBER}"
