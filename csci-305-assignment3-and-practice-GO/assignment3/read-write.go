package main 

import "fmt"
import "io/ioutil"
import "os"
import "strconv"



func openFile(fileName string) ([]byte, error) { // opens the name of the file given within parameter
    return ioutil.ReadFile(fileName)
}


func parseOutNumbers(data []byte) string { // parses out all numbers from input file

    testdata := string(data) // byte string of data
    upper := 0 // upper bound to use in slice
    lower := 0 // lower bound to use in slice
    modData := "" // string without numbers

    for i,_ :=  range (string(testdata[:])) { // iterate through each letter in text file string

        if(i != len(testdata)){ // create bounds for the slice to grab
            upper = i + 1
            lower = i 
        }

        if (!IsNumeric(testdata[lower:upper])){ // uses function to determine is it is a string
            modData = modData + testdata[lower:upper] // concatenates slice by slice
        }
    }
    return modData
}

func IsNumeric(s string) bool {  // https://rosettacode.org/wiki/Determine_if_a_string_is_numeric
    _, err := strconv.ParseFloat(s, 64) // determines if string is float, negative, and positive... dont need all
    return  err == nil
}

func writeOutFile(data string, outputfile string) error {
    message := []byte(data)
    return ioutil.WriteFile(outputfile,message,0644)
}

func main() {  

    fileName := os.Args[1] // command line arguments
    output := os.Args[2]

    fmt.Println("test ", fileName, output)
    data, err := openFile( fileName ) // obtains the string of data as well as if an error has been reported

    if err != nil {
        fmt.Println("File reading error", err)
        panic(err) // check if error has been reported
    }

    modData := parseOutNumbers(data) // obtains new string of data

    err = writeOutFile(modData, output) // call function to write to an output file
    if err != nil {
        fmt.Println("File reading error", err)
        panic(err)
    }


    
}

