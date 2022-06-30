#!/bin/bash -e

script_dir_path=$(cd `dirname "${BASH_SOURCE[0]}"`; pwd -P)

export DSL_DEFAULT_MAIN_CONFIG_FILE_REPO=radtriste/kogito-pipelines
export DSL_DEFAULT_MAIN_CONFIG_FILE_REF=docs_quarkus_update_test
export DSL_DEFAULT_MAIN_CONFIG_FILE_PATH=dsl/config/main.yaml
export DSL_DEFAULT_BRANCH_CONFIG_BRANCH=docs_quarkus_update_test

file=$(mktemp)
# For more usage of the script, use ./test.sh -h
curl -o ${file} https://raw.githubusercontent.com/kiegroup/kogito-pipelines/main/dsl/seed/scripts/seed_test.sh
chmod u+x ${file}
${file} $@