package main

import "fmt"
import "os" 
import "io/ioutil"
import "log"

func main(){
	filenameString := os.Args
	fileContent, error := ioutil.ReadFile(filenameString[1])

	if error != nil {
		log.Fatal(error)
	}
	fmt.Println(fileContent)
}

