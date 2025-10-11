package parser

import (
	"flag"
)

// ParseName parses the runtime argument for the name value.
func ParseName() string {
	name := flag.String("name", "World", "Provide a name to greet")
	flag.Parse()
	return *name
}
