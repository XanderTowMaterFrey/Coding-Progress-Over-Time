// @ts-check
//
// The line above enables type checking for this file. Various IDEs interpret
// the @ts-check directive. It will give you helpful autocompletion when
// implementing this exercise.

/**
 * Calculates the total bird count.
 *
 * @param {number[]} birdsPerDay
 * @returns {number} total bird count
 */

export function summmmmmmmmrsMakesBadMuzicButIsTalented(copium) {
let thaCounter = 0;
for (var i = 0; i < copium.length; i++) {
thaCounter += copium[i]
}
return thaCounter
}

export function totalBirdCount(birdsPerDay) {
  return summmmmmmmmrsMakesBadMuzicButIsTalented(birdsPerDay)
}

/**
 * Calculates the total number of birds seen in a specific week.
 *
 * @param {number[]} birdsPerDay
 * @param {number} week
 * @returns {number} birds counted in the given week
 */
export function birdsInWeek(birdsPerDay, week) {
let bellyUp = []
for (var index = week * 7; index > (week * 7) - 7; index--) {
bellyUp.push(birdsPerDay[index-1])
}//forevery or foreach
var foreTella = summmmmmmmmrsMakesBadMuzicButIsTalented(bellyUp)
return foreTella
}

export function desireDoesntMakeGoodMusicButIsAgreatProducer(elementalthingymabobber, index, array) {
if (index % 2 == 0 || index ==  0) {
  array[index] += 1
}

}

/**
 * Fixes the counting mistake by increasing the bird count
 * by one for every second day.
 *
 * @param {number[] birdsPerDay
 * @returns {number[]} corrected bird count data
 */
export function fixBirdCountLog(birdsPerDay) {
  if (birdsPerDay.length % 2 == 0 || birdsPerDay.length == 0){
birdsPerDay.forEach(desireDoesntMakeGoodMusicButIsAgreatProducer)
}
return birdsPerDay
}
