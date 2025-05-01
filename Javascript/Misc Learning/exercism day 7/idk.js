function adderUp(lister, i) {
	lister[i] += 1
}

let listy = [0,1,2,3,4]

listy.forEach(adderUp)

console.log(listy)