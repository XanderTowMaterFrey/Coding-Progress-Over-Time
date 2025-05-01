package main

import (
	"fmt"
	"sync"
)

func main() {
	var longString = "this is the message that will print here, i do not like this syntax for this function, but it is cool that you can inject it in the code like this. ideally you should always rewrite these functions to be a normal function and just call the function. \"oh but its only used once\" scalability my friend, the goal is scalability"

	var wg sync.WaitGroup

	printActionWithNoWaitGroupImplementationNowThereWeGoCollinIMadeTheFunctionNameBetterSeeTheImprovementAlreadyQuestionMark("direct")

	wg.Add(4)

	go printActionThereWeGoCollinIMadeTheFunctionNameBetterSeeTheImprovementAlreadyQuestionMark("goroutine", &wg)
	go thatVasEz("How are you today Collin", &wg)
	go printActionThereWeGoCollinIMadeTheFunctionNameBetterSeeTheImprovementAlreadyQuestionMark("Howdy fella", &wg)

	go func(msg string, wg *sync.WaitGroup) {
		// Add a wg.Done here to get the final one done
		defer wg.Done()
		fmt.Println(msg)
	}(longString, &wg)

	wg.Wait()
	fmt.Println("done")
}

func printActionThereWeGoCollinIMadeTheFunctionNameBetterSeeTheImprovementAlreadyQuestionMark(varry string, wg *sync.WaitGroup) {
	// Move out of for loop, we only want this to be called once at the end of this entire function. For loop makes it get called 3 times
	defer wg.Done()

	for i := 0; i < 3; i++ {
		fmt.Println(varry, ":", i)
	}
}

func printActionWithNoWaitGroupImplementationNowThereWeGoCollinIMadeTheFunctionNameBetterSeeTheImprovementAlreadyQuestionMark(varry string) {
	for i := 0; i < 3; i++ {
		fmt.Println(varry, ":", i)
	}
}

func thatVasEz(hiCollin string, wg *sync.WaitGroup) {
	defer wg.Done()
	fmt.Println(hiCollin)
}
