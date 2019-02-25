package main

import "fmt"

func plus(a int, b int) int {
	return a + b
}

func plusplus(a,b ,c int) int {
	return a+b+c
}

func vals() (int,int) {
	return 3,7
}

func variadicSums(nums ... int){
	fmt.Println(nums," ")
	total:= 0
	for _,num := range nums{
		total += num
	}
	fmt.Println(total)
}

func intSeq() func() int {
	i :=0
	return func() int {
		i++
		return i
	}
}

func fact(n int)int{
	if n == 0{
		return 1
	}
	return n * fact(n-1)
}

func zeroval(ival int){
	ival = 0
}

func zeroptr(iptr *int){
	*iptr = 0
}


func main(){
	res:= plus(1,2)
	fmt.Println("1+2 = ",res)

	res = plusplus(1,2,3)
	fmt.Println("1+2+3 = res")

	x, y := vals()
	fmt.Println("return 2 vals: ",x,y)

	fmt.Println("Variadic: function that takes any number of trailing arguments.")
	variadicSums(1,2)
	variadicSums(1,2,3)
	nums := [] int{1,2,3,4}
	variadicSums(nums...)

	fmt.Println("\nClosures")
	nextInt := intSeq()

	fmt.Println(nextInt())
	fmt.Println(nextInt())
	fmt.Println(nextInt())

	newInts := intSeq()
	fmt.Println(newInts())

	fmt.Println("\nRecursion")
	fmt.Println(fact(7))

	fmt.Println("\nPointers")

	i:=1
	fmt.Println("initial:", i)
	zeroval(i)
	fmt.Println("zeroval:",i)
	zeroptr(&i)
	fmt.Println("zeroptr:",i)
	fmt.Println("pointer:", &i)
}