#!/bin/bash

echo "$(ls -ltr)"

# Build the Go program
echo "Building the Go program..."
go build -o go-world main/...

echo "$(ls -ltr)"

# Run the program with a runtime argument
echo "Running the program..."
cd main && ls -ltr
./go-world -name="Conor Heffron"
