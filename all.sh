#!/usr/bin/env bash
# Download the Models
./downloadModels.sh
# Build the Dockerfile
./dBuild.sh
# Run the configured nvidia docker instance.
./dRun.sh
