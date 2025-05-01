function clearList(array) {
    array.splice(0, array.length);
}

function checkRows(array) {
    console.log(...array)
    let potentialRSpot = [];
    let value = Math.max(...array); // Using spread operator to find max value
    potentialRSpot.push(value);
    return potentialRSpot; // Return the potential saddle points
}

const saddlePoints = (matrix) => {
    let saddlePointsList = [];

    // Iterate over each row in the matrix
    for (let i = 0; i < matrix.length; i++) {
        let potentialSaddlePoints = checkRows(matrix[i]); // Check each row for potential saddle points
        saddlePointsList.push(...potentialSaddlePoints); // Add potential saddle points to the list
    }

    return saddlePointsList; // Return the list of potential saddle points
}

const data4u = [[3, 5, 2], [3, 5, 6], [1, 5, 4]];
const saddlePointsList = saddlePoints(data4u);
console.log(saddlePointsList); // Output the potential saddle points
