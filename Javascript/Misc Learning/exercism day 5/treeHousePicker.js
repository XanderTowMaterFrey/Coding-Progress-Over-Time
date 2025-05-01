function generateRowsAndCols () {
// input is provided, idk how to parse it, i will return to this 
}

function clearList(array) {
    array.splice(0, array.length);
}


function checkRows (array) {
	let potentialRSpot = []
	let obj = Object.values(array)
	let objyn = obj.shift()
	let value = Math.max(array)
	let arr = Array.from(Object.entries(array), ([key, value]) => value);
	potentialRSpot.push(value)
	// console.log('array' + array.length)
	// console.log('value' + value)
	console.log('obj ' + typeof arr)
	// console.log('potentialRSpot' + potentialRSpot)
// highest numbers per row -> return index
	// if indexes match -> checkCols(array of indexed values) 
		// else -> else, return the index and list of the highest value
	// if potentialRSpot contains matching {
	// 	potentialRSpot.forEach(checkCols)
	// }
}


function checkCols (value, index, array) {
	let potentialCSpot = []
	potentialCSpot.push()
	potentialCSpot
// return lowest of the values

}

const saddlePoints = (saddlePoints) => {
let tempList = []
let ihatejs = Object.values(saddlePoints)
for (var i = 0; i < ihatejs.length; i++) {
	tempList.push(ihatejs[i])
	console.log(typeof ihatejs[i])
	checkRows(tempList)
	clearList(tempList)
	// tempList = saddlePoints[i] // consider using splice as clear list before this
	// console.log(Math.max(tempList))
}
	// tempList.forEach(checkRows)

}
const data4u = [[3, 5, 2], [3, 5, 6], [1, 5, 4]]

saddlePoints(data4u)
