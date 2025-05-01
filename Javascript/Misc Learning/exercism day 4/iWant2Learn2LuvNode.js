// look for a way to count how many times a letter happens in a string 

// match all will count and return, but it wont count by sections, we gotta figure out how to count by sections 

// \x -> x:xs = x == xs: pass & counter++1 to list_letter, otherwise list_nextLetter = []

//endsWith \ startsWith return true or false if the string[lettersIndex] starts or ends, perhaps start with and slice or some could work together

/*const encode = () => {

}

function tester (string){
if ((var == string.startsWith(var)) == true) {return length(list4This.push(var))++var} // just var if length ==1
if ((var != string.startsWith(var))) {}
}

tester = phrase.forEach(tester)

*/
function getLists(letter, index, array) {

	for (var index = 0; index <= array.length -1; index++) { // Things.length - 1; index >= 0; index--) {
		// Things[index]
	// }
		let tempList4This = []

		if (array[index] === array[index+1]) { 
			tempList4This.push[letter]

		} 
		else {
			if (tempList4This.length >= 1) {
			list4This.push((tempList4This.length + 1) + letter)
			}
			list4This.push(letter)
		}
}
}

function encodeItAllbroke(letter, index, array) {
	let tempList4This = []
	let list4This = []
	if (array[index] === array[index+1]) { 
		tempList4This.push[letter]
		console.log('index == ' + index +'temp list: ' + tempList4This)
	}
	else {
		if (tempList4This.length >= 1) {
		list4This.push((tempList4This.length + 1) + letter)
		}
		list4This.push(letter)
		console.log('index == ' + index +'temp list: ' + list4This)
	}
}

	let newArray = []
    let tempList4This = [];
    let list4This = [];
function encodeItAllbroke2(letter, index, array) {

    if (array[index] === array[index + 1]) {
        tempList4This.push(letter);
        console.log('index == ' + index + ' temp list: ' + tempList4This);
    } else {
        if (tempList4This.length >= 1) {
            list4This.push((tempList4This.length + 1) + tempList4This[0]);
            tempList4This = []; // Reset tempList4This after pushing its contents
        }
        list4This.push(letter);
        console.log('index == ' + index + ' list 4 list: ' + list4This);
    }
}
function encodeItAllbroke3(letter, index, array) {
    tempList4This.push(letter);
    if (index === array.length - 1 || array[index] !== array[index + 1]) {
        if (tempList4This.length >= 1) {
            list4This.push((tempList4This.length) + tempList4This[0]);
            tempList4This = []; // Reset tempList4This after pushing its contents
            console.log('tempList4This = ' + tempList4This)
            console.log('list4This = ' + list4This)
        }
    }
}


function indexInclusivity (item, index, array) {
	// console.log('item' + item + '\nindex'+ index + '\narray' + array)
	if (index >=1) {
		item1 = array[index-1]
		item2 = array[index]
		// console.log(item2+item1)
			if (item1.includes(item2)) {
			array.splice(index, 1)
			// console.log('array '+ array)
			}
	}
}


let encodedListWithDuplicates = []

function encodeItAll(letter, index, array) {
    if (array[index] === array[index + 1]) {

        tempList4This.push(letter);
        
        // console.log('index == ' + index + ' temp list: ' + tempList4This);

    } else {
        if (tempList4This.length >= 1) {
            list4This.push((tempList4This.length + 1) + tempList4This[0]);
            // let tempList4This = []
            tempList4This.splice(0, tempList4This.length); // Change: Clear tempList4This after pushing its contents
        }
        list4This.push(letter);
        // console.log('index == ' + index + ' list 4 list: ' + list4This);
        // console.log('index == ' + index + ' list 4 list temp list: ' + tempList4This);
    }
	// instead of returning this, push to a new list thats predefined then access that -- this is done with list4This already 
	// return list4This // we dont return, we do need to make this a thing though 
}

function stringify(list4This) {
	let tempString = list4This.toString()
	return tempString.replaceAll(',','')

}


const encode = (string) => {
	let array4This = []
	for (var i = 0; i <= string.length - 1; i++) {
		array4This.push(string[i])
		// console.log('test'+array4This)
	}
	array4This.forEach(encodeItAll)

	list4This.forEach(indexInclusivity)

	return stringify(list4This)

}



const encoder = (stringy) => {
	let array4This = []
	for (var i = 0; i <= stringy.length - 1; i++) {
		array4This.push(stringy[i])
		console.log(array4This)
	}
	console.log('Array before forEach:', array4This);
	array4This.forEach((letter, index, array) => {
	    console.log('Calling encodeItAll for letter:', letter);
	    encodeItAll(letter, index, array);
	});
}


const stringy1 = "lllol";
const stringy2 = "       hell loo pty doopty";
const stringy = 'WWWWWWWWWWWWBWWWWWWWWWWWWBBBWWWWWWWWWWWWWWWWWWWWWWWWB'

const listy = ["", "5L", "L", "k"];

// listy.forEach(indexInclusivity)
// console.log(listy.forEach(indexInclusivity))

console.log(encode(stringy)); 