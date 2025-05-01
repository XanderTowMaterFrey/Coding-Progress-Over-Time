const listy = ["", "5L", "L"];
let finalList = []

const checkCondition = (listy) => {
    const secondItem = listy[1];
    const thirdItem = listy[2];
    
    return secondItem.includes(thirdItem);
}


function findIndexesWithNumbers(arr) {
    const indexes = [];
    var strVal = '';
    var charVal = '';
    var intVal = '';
    arr.forEach((value, index) => {
        if (!isNaN(parseInt(value))) { 
            let intVal = parseInt(value)
            let strVal = String(value)
            let charVal = strVal[strVal.length-1]
            for (intVal >= 1; intVal--;) {
                finalList.push(charVal)
                // console.log('CV '+charVal)
            }
        }
        // console.log('value '+value)
        if (isNaN(parseInt(value))) {
        finalList.push(value)
        }


            // indexes.push(index);
        })
    };
    // return indexes;


// strval = string(value)
// print strval[-1] x amount of times 

// we can parseInt() into a var to store the int 
// for (var index = array.length - 1; index >= 0; index--) {
//     array[index]

// }

const arr = ['h', 'e', '2l', 'o', ' ', 'p', '2o', 'p'];
const indexesWithNumbers = findIndexesWithNumbers(arr);
// console.log(indexesWithNumbers); // Output: [2, 6]
console.log(finalList)




// console.log(checkCondition(listy)); // Output: true