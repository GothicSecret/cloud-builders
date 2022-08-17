#!/bin/bash
echo "Build started"

nugetVersion=$1
nuspecFilePath=$2
echo "NugetVersion = $nugetVersion"
echo "NuspecFilePath = $nuspecFilePath"

# replace version in nuspec
sed -i -E "s/<version>(.*)<\/version>/<version>$nugetVersion<\/version>/g" $nuspecFilePath

echo "Build finished"
