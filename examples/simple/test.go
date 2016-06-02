package main

import (
	"os"
	"fmt"
	"./simple_conf"
)

func main() {
	fmt.Printf("MYBOOL = %s\n", simple_conf.Config["MYBOOL"]);
	fmt.Printf("MYSTRING = %s\n", simple_conf.Config["MYSTRING"]);
	fmt.Printf("MYTRISTATE = %s\n", simple_conf.Config["MYTRISTATE"]);
	fmt.Printf("MYINT = %s\n", simple_conf.Config["MYINT"]);
	fmt.Printf("MYHEX = %s\n", simple_conf.Config["MYHEX"]);
	os.Exit(0);
}
