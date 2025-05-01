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
        let iHateJS = true;

        if (!isNaN(parseInt(array[index + 1]))) {
            let nextValue = parseInt(array[index + 1]);
            let combinedValue = parseInt(strVal + nextValue);
            iHateJS = false;
            for (let i = 0; i < combinedValue; i++) {
                finalList.push(array[index + 2]);
            }
            array.splice(index + 1, 1); // remove the next value from array
        }

        if (iHateJS === true) {
            for (let i = 0; i < intVal; i++) {
                finalList.push(array[index + 1]);
            }
        }
    }
    if (isNaN(parseInt(value))) {
        if (finalList[index] == finalList[index - 1]) {
            finalList.pop();
        }
        finalList.push(value);
    }
}

export function decodeItAll(array) {
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
    for (let i = 0; i <= string.length - 1; i++) {
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
    decodeItAll(array4This);
    list4This.forEach(indexInclusivity);
    return stringify(finalList);
}