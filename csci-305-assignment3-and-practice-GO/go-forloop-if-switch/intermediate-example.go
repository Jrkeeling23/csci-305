//www.gobyexample.com
package main
import "fmt"
import "time"
import "reflect"

func main() {

	i:=1 // short variable clause
	for i <= 3 {
		fmt.Println(i)
		i = i +1
	}

	for{
		fmt.Println("Loop")
		break
	}

	for n := 0; n <=5; n++ {
		if n%2 ==0 {
			continue
		}
		fmt.Println(n)
	}
	fmt.Println()
	fmt.Println("Switch Statement using time.Now() & time.Hour()")

	t := time.Now()
	switch {
	case t.Hour() < 12:
		fmt.Println("It's before noon")
	default :
		fmt.Println("It's after noon")
	}
	fmt.Println()

	fmt.Println("Switch Statement using time.Now().Weekday() & time.Saturday,time.Sunday")
	switch time.Now().Weekday(){
	case time.Saturday, time.Sunday:
		fmt.Println("It's the weekend")
	default :
		fmt.Println("It's the week")
	}
	fmt.Println()

	fmt.Println("Switch using func(i interface{})")
	whatAmI := func(i interface{}){
		switch t := i.(type) {
		case bool:
			fmt.Println("I'm a bool")
		case int: 
			fmt.Println("I'm a int")
		default:
			fmt.Println("Don't know type", reflect.TypeOf(t))
		}
	}
	whatAmI(true)
	whatAmI(1)
	whatAmI("hey")
}