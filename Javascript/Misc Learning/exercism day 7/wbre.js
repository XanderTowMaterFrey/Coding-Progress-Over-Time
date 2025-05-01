function summmmmmmmmrsMakesBadMuzicButIsTalented(copium) {
let thaCounter = 0;
for (var i = 0; i < copium.length; i++) {
  thaCounter += copium[i]
}
return thaCounter
}


function birdsInWeek(birdsPerDay, week) {
let bellyUp = []
// console.log(bellyUp + 'bellyup')

for (var index = week * 7; index > (week * 7) - 7; index--) {
  console.log(birdsPerDay[index])
bellyUp.push(birdsPerDay[index])
}
var foreTella = summmmmmmmmrsMakesBadMuzicButIsTalented(bellyUp)
// console.log(foreTella+'foreTella')
return foreTella
}

const birdsPerDay = [3, 0, 5, 1, 0, 4, 1 | 0, 3, 4, 3, 0, 8, 0];

let summm = birdsInWeek(birdsPerDay, 1)

console.log(summm + 'goodVars')