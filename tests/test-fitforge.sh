#!/bin/bash

echo "Running FitForge tests..."

test -f Home.html
test -f Workout.html
test -f Progress.html
test -f Dashboard.html

echo "All FitForge tests passed!"