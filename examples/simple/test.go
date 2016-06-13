package main

import (
	"os"
	"fmt"
	"./simple_nct"
)

func main() {
	fmt.Printf("MYBOOL = %s\n", simple_nct.Config["MYBOOL"]);
	fmt.Printf("MYSTRING = %s\n", simple_nct.Config["MYSTRING"]);
	fmt.Printf("MYTRISTATE = %s\n", simple_nct.Config["MYTRISTATE"]);
	fmt.Printf("MYINT = %s\n", simple_nct.Config["MYINT"]);
	fmt.Printf("MYHEX = %s\n", simple_nct.Config["MYHEX"]);
	os.Exit(0);
}
