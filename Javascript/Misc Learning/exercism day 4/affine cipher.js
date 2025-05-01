const checky = [1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,21,22,23,24,25,26]


// int :: bool
export function isCoPrime(varA) {
	if(varA === 2 || varA === 13 ) {
		return true
	} else if (varA % 2 === 0) {
		//return false
    	throw new Error('a and m must be coprime.');
    } else if (varA % 13 === 0) {
		//return false
  		throw new Error('a and m must be coprime.');
	} else {
		return true
	} 
}

// string :: [int]
export function LesMapDaLetta2ANumba(phrase) {
	let list4This = []
	for (var i = phrase.length - 1; i >= 0; i--) {
		list4This.push(phrase[i])
	}
	return list4This.map(convertToNumber(letta))
}

// char :: int
export function convertToNumber(letta2Do, index, array) {	return letta2Return = checky.index(letta2Do)
}

// [listofvars] :: [clearlist]
export function clearList(listyyyyy) {
	for (var lengthOfListyyyyy = listyyyyy.length - 1; lengthOfListyyyyy >= 0; lengthOfListyyyyy--) {
		lengthOfListyyyyy.pop()
		}
		// or return let listyyyyy = []}
	}

// int :: string
function index2Letta(list4This) {
	checky // has letters 
	list4This // has numbers 
	for (var letter = list4This.length - 1; letter >= 0; letter--) {
		// take the number and take something from checky then push 
		list4This[letter]
	}
}

// string :: string
export const encode = (phrase, key) => {
  let a = key.a 
  let b = key.b
	// 1 convert to number :: uses function LesMapDaLetta2ANumba via function that calls convertToNumber

	  // 2 for loop for map done when funcition convertToNumber is called
	let list4This = LesMapDaLetta2ANumba(phrase)
	  // makes list and appends each letters index to it 

	    // 3 convert back to letter\ string
	let encodedPhrase = list4This.map(index2Letta(list4This))

// findIndex
  // list[index]

// //  E(x) = (a[index] + b) % 26
for letta in phrase () {
	letta = (convert to number)
  letter = ((a * phrase[letta])) % 26
  //if (a % 2 == 0 | a % 13 == 0) {return false} else {return true}

}
}
