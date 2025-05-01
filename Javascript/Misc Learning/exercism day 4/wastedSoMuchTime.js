let list4This = [];
let tempList4This = []; 
let array4This = [];
let finalList = [];
let indexes = [];

export function encodeItAll(letter, index, array) {
    if (array[index] === array[index + 1]) {
        tempList4This.push(letter);
    } else {
        if (tempList4This.length >= 1) {
            list4This.push((tempList4This.length + 1) + tempList4This[0]);
            clearList(tempList4This);
        }
        list4This.push(letter);
    }
}

export function clearList(array) {
    array.splice(0, array.length);
}

export function printDecoder(value, index, array) {

    if (!isNaN(parseInt(value))) { // is this a number
        let strVal = String(value);
        let intVal = parseInt(value);
        var tempInt = ''
        var bruhJSSuxIntPlaceholder = ''
        let iHateJS = true

        if(!isNaN(parseInt(array[index+1]))){
            tempInt = parseInt(array[index+1])
            bruhJSSuxIntPlaceholder = intVal.toString() + tempInt.toString()
            intVal = parseInt(bruhJSSuxIntPlaceholder)
            iHateJS = false
            for (intVal >= 1; intVal--;) {
                finalList.push(array[index+2]);
            }
        }

        if (iHateJS === true) {

        for (intVal >= 1; intVal--;) {
            finalList.push(array[index+1]);
        }
        }

    }
    if (isNaN(parseInt(value))) {

        if (finalList[index] == finalList[index-1]){
        finalList.pop()
        }
        finalList.push(value);
    }
}

export function decodeItAll(array) {
    var strVal = '';
    var intVal = '';
    clearList(indexes);
    clearList(list4This);
    array.forEach(printDecoder);
}

export function indexInclusivity(item, index, array) {
    if (index >= 1) {
        let item1 = array[index - 1];
        let item2 = array[index];
        if (item1.includes(item2)) {
            array.splice(index, 1);
        }
    }
}

export function stringify(list4This) {
    let tempString = list4This.toString();
    let newString = tempString.replaceAll(',', '');
    clearList(list4This);
    return newString;
}

export function arrayify(string) {
    clearList(array4This);
    for (var i = 0; i <= string.length - 1; i++) {
        array4This.push(string[i]);
    }
}

export const encode = (string) => {
    arrayify(string);
    array4This.forEach(encodeItAll);
    list4This.forEach(indexInclusivity);
    return stringify(list4This);
}

export const decode = (string) => {
    arrayify(string);
console.log(array4This)
    decodeItAll(array4This);
console.log(array4This)
    list4This.forEach(indexInclusivity);
// console.log(finalList)
    return stringify(finalList);
}

console.log(decode('2A3B4C'))