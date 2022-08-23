#!/bin/bash
set -o pipefail
set -eu

if [ -z "$INPUT_SONARPROJECTKEY" ]; then
    echo "Input parameter sonarProjectKey is required"
    exit 1
fi
if [ -z "$SONAR_TOKEN" ]; then
    echo "Environment parameter SONAR_TOKEN is required"
    exit 1
fi

echo "INPUT_SONARPROJECTKEY: $INPUT_SONARPROJECTKEY"
echo "INPUT_SONARHOSTNAME: $INPUT_SONARHOSTNAME"

sonar_begin_cmd="/dotnet-sonarscanner begin /k:\"${INPUT_SONARPROJECTKEY}\" /d:sonar.login=\"${SONAR_TOKEN}\" /d:sonar.host.url=\"${INPUT_SONARHOSTNAME}\""

sonar_end_cmd="/dotnet-sonarscanner end /d:sonar.login=\"${SONAR_TOKEN}\""

dotnet_build_cmd="dotnet build"

echo "sonar_begin_cmd: $sonar_begin_cmd"
sh -c "$sonar_begin_cmd"

echo "dotnet_build_cmd: $dotnet_build_cmd"
sh -c "${dotnet_build_cmd}"

echo "sonar_end_cmd: $sonar_end_cmd"
sh -c "$sonar_end_cmd"
