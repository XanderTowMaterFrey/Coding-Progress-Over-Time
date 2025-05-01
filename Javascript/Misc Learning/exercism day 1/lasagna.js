// Good luck preparing some lasagna!

/**
 * The number of minutes it takes to prepare a single layer.
 */
const PREPARATION_MINUTES_PER_LAYER = 2;
export const EXPECTED_MINUTES_IN_OVEN = 40;

/**
 * Determines the number of minutes the lasagna still needs to remain in the
 * oven to be properly prepared.
 *
 * @param {number} actualMinutesInOven
 * chatGPT failed this one so hard, but i brute forced it into working. the expected variable was needed and was not provided clearly. the skeleton for this one was littered with bloatation. and on top of all that, the author of this one has clearly never cooked a lasagna. this is not how cooking works. the whole thing cooks at once. if anything it cooks in layers that are outside in, perimeter based. 
 * @returns {number} the number of minutes remaining
 */
export function remainingMinutesInOven(actualMinutesInOven) {
  const totalMinutesInOven = EXPECTED_MINUTES_IN_OVEN;
  return Math.max(0, totalMinutesInOven - actualMinutesInOven);
}


/**
 * Given a number of layers, determines the total preparation time.
 *
 * @param {number} numberOfLayers
 * @returns {number} the total preparation time
 */
export function preparationTimeInMinutes(numberOfLayers) {
  return numberOfLayers * PREPARATION_MINUTES_PER_LAYER;
}

/**
 * Calculates the total working time. That is, the time to prepare all the layers
 * of lasagna, and the time already spent in the oven.
 *
 * @param {number} numberOfLayers
 * @param {number} actualMinutesInOven
 * @returns {number} the total working time
 */
export function totalTimeInMinutes(numberOfLayers, actualMinutesInOven) {
  const preparationTime = preparationTimeInMinutes(numberOfLayers);
  return preparationTime + actualMinutesInOven;
}