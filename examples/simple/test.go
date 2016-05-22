package main

import (
	"os"
	"fmt"
	"./simple_conf"
)

func main() {
	fmt.Printf("MYBOOL = %s\n", simple_conf.Config["NCONFIG_MYBOOL"]);
	fmt.Printf("MYSTRING = %s\n", simple_conf.Config["NCONFIG_MYSTRING"]);
	fmt.Printf("MYTRISTATE = %s\n", simple_conf.Config["NCONFIG_MYTRISTATE"]);
	fmt.Printf("MYINT = %s\n", simple_conf.Config["NCONFIG_MYINT"]);
	fmt.Printf("MYHEX = %s\n", simple_conf.Config["NCONFIG_MYHEX"]);
	os.Exit(0);
}
