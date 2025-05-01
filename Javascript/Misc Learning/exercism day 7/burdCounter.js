function totalBirdCount(birdsPerDay) {
  let burdCounter = 0 
  for (let i = 0; i < birdsPerDay.length; i++) {
  burdCounter += birdsPerDay[i]
  }
  return burdCounter
}


const birdsPerDay = [9, 0, 8, 4, 5, 1, 3];

console.log(totalBirdCount(birdsPerDay))