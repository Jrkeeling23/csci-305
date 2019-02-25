
//www.gobyexample.com
package main

import "fmt"
import "math"
const s string = "constant"

func main(){
	fmt.Println("\nHello, world.\n")

	fmt.Println("go" + "lang\n");

	fmt.Println("1+1 =", 1+1);
	fmt.Println("7.0/3.0 =", 7.0/3.0, "\n");

	fmt.Println(true && false);
	fmt.Println(true || false);
	fmt.Println(!true,"\n");

	var a = "initial"
	fmt.Println("a =",a)
	var b,c int = 1,2
	fmt.Println("b,c int =",b,c)
	var d = true
	fmt.Println("d =",d)
	var e int 
	fmt.Println("e int=",e)
	f := "short"
	fmt.Println("f :=", f,"\n")

	fmt.Println("contstant s =",s)
	const n = 500000000
	const z = 3e20 / n
	fmt.Println("n =", n)
	fmt.Println("z=3e20/n =",z)
	fmt.Println("int64(z) =",int64(z))
	fmt.Println("math.Sin(n) =",math.Sin(n))


	
}