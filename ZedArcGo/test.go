package main

import (
	"fmt"
	"sync"
	"time"
)

func printActionThereWeGoCollinIMadeTheFunctionNameBetterSeeTheImprovementAlreadyQuestionMark(varry string, wg *sync.WaitGroup) {
	defer wg.Done()

	for i := 0; i < 3; i++ {
		// defer wg.Done() //this is wrong in the loop
		fmt.Println(varry, ":", i)
		time.Sleep(time.Millisecond * 125)
	}
}

func printActionWithNoWaitGroupImplementationNowThereWeGoCollinIMadeTheFunctionNameBetterSeeTheImprovementAlreadyQuestionMark(varry string) {
	for i := 0; i < 3; i++ {
		fmt.Println(varry, ":", i)
		time.Sleep(time.Millisecond * 125)
	}
}

func thatVasEz(hiCollin string, wg *sync.WaitGroup) {
	// defer wg.Done()
	fmt.Println(hiCollin)
	wg.Done()
}

func main() {
	var strizzy = "this is the message that will print here, i do not like this syntax for this function, but it is cool that you can inject it in the code like this. ideally you should always rewrite these functions to be a normal function and just call the function. \"oh but its only used once\" scalability my friend, the goal is scalability"

	var wg sync.WaitGroup

	printActionWithNoWaitGroupImplementationNowThereWeGoCollinIMadeTheFunctionNameBetterSeeTheImprovementAlreadyQuestionMark("direct")

	wg.Add(4)
	go printActionThereWeGoCollinIMadeTheFunctionNameBetterSeeTheImprovementAlreadyQuestionMark("goroutine", &wg)
	go thatVasEz("How are you today Collin?", &wg)
	go printActionThereWeGoCollinIMadeTheFunctionNameBetterSeeTheImprovementAlreadyQuestionMark("Howdy fella", &wg)

	go func(msg string, wg *sync.WaitGroup) {
		defer wg.Done()
		fmt.Println(msg)
	}(strizzy, &wg)

	wg.Wait()
	// time.Sleep(time.Second)
	fmt.Println("done")
}
