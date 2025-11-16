#!/bin/bash

xcrun simctl io booted recordVideo --codec=h264 test-runs/Launch1.ios.mp4 &
RECORDING_PIDA=$!
maestro test maestro/Launch.ios.yaml --no-ansi
kill -INT $RECORDING_PIDA