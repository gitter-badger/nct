package main

import (
	"os"
	"fmt"
	"./simple_nconf"
)

func main() {
	fmt.Printf("MYBOOL = %s\n", simple_nconf.Config["MYBOOL"]);
	fmt.Printf("MYSTRING = %s\n", simple_nconf.Config["MYSTRING"]);
	fmt.Printf("MYTRISTATE = %s\n", simple_nconf.Config["MYTRISTATE"]);
	fmt.Printf("MYINT = %s\n", simple_nconf.Config["MYINT"]);
	fmt.Printf("MYHEX = %s\n", simple_nconf.Config["MYHEX"]);
	os.Exit(0);
}
