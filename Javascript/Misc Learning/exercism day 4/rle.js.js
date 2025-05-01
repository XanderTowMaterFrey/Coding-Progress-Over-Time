let list4This = [];
let tempList4This = [];
let array4This = []
let finalList = []

export function encodeItAll(letter, index, array) {

    if (array[index] === array[index + 1]) {
        tempList4This.push(letter);
    } 

    else {
        if (tempList4This.length >= 1) {
            list4This.push((tempList4This.length + 1) + tempList4This[0]);
            clearList(tempList4This)
            // tempList4This.splice(0, tempList4This.length); 
        }
        list4This.push(letter);
    }
}

export function clearList(array) {
	array.splice(0, array.length)
}

export function printDecoder (value, index, array) {
    if (!isNaN(parseInt(value))) { 
        let intVal = parseInt(value)
        let strVal = String(value)
        let charVal = strVal[strVal.length-1]
        for (intVal >= 1; intVal--;) {
            finalList.push(charVal)
        }
    }
    if (isNaN(parseInt(value))) {
    finalList.push(value)
    }
}

export function decodeItAll(array) {
    const indexes = [];
    var strVal = '';
    var charVal = '';
    var intVal = '';
    clearList(list4This)
    array.forEach(printDecoder)
};

export function indexInclusivity (item, index, array) {
	if (index >=1) {
		let item1 = array[index-1]
		let item2 = array[index]
			if (item1.includes(item2)) {
			array.splice(index, 1)
			}
	}
}


// [string] :: string
export function stringify(list4This) {
	let tempString = list4This.toString()
    let newString = tempString.replaceAll(',','')
	// list4This.splice(0, list4This.length); 
	clearList(list4This)
    return newString
}

export function arrayify(string) {
	clearList(array4This)
	for (var i = 0; i <= string.length - 1; i++) {
		array4This.push(string[i])
	}
}

export const encode = (string) => {
/*	let array4This = []
	for (var i = 0; i <= string.length - 1; i++) {
		array4This.push(string[i])
	}*/
	arrayify(string)

	array4This.forEach(encodeItAll)
	list4This.forEach(indexInclusivity)
	return stringify(list4This)
}

export const decode = (string) => {
/*	let array4This = []
	for (var i = 0; i <= string.length - 1; i++) {
		array4This.push(string[i])
	}*/
	arrayify(string)

  	array4This.forEach(decodeItAll)
  	list4This.forEach(indexExclusivity)
	return stringify(finalList)
}