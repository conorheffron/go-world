package main

import (
	"fmt"
	"./parser"
)

func main() {
	// Parse the name argument using the parser package
	name := parser.ParseName()

	// Print the greeting
	fmt.Printf("Hello there, %s!\n", name)
}
