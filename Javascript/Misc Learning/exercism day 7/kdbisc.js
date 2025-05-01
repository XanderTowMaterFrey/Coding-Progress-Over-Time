// @ts-check

/**
 * Retrieve card from cards array at the 0-based position
 *
 * @param {number[]} cards
 * @param {number} position
 *
 * @returns {number} the card
 */
function getItem(cards, position) {
  return cards[position]}

/**
 * Exchange card with replacementCard at the 0-based position
 *
 * @param {number[]} cards
 * @param {number} position
 * @param {number} replacementCard
 *
 * @returns {number[]} the cards with the change applied
 */
// 
function setItem(cards, position, replacementCard) {
  cards.splice(position, 1, replacementCard)
  return cards  
}

/**
 * Insert newCard at the end of the cards array
 *
 * @param {number[]} cards
 * @param {number} newCard
 *
 * @returns {number[]} the cards with the newCard applied
 */
function insertItemAtTop(cards, newCard) {
  throw new Error('Implement the insertItemAtTop function');
}

/**
 * Remove the card at the 0-based position
 *
 * @param {number[]} cards
 * @param {number} position
 *
 * @returns {number[]} the cards without the removed card
 */
function removeItem(cards, position) {
  throw new Error('Implement the removeItem function');
}

/**
 * Remove card from the end of the cards array
 *
 * @param {number[]} cards
 *
 * @returns {number[]} the cards without the removed card
 */
function removeItemFromTop(cards) {
  throw new Error('Implement the removeItemFromTop function');
}

/**
 * Insert newCard at beginning of the cards array
 *
 * @param {number[]} cards
 * @param {number} newCard
 *
 * @returns {number[]} the cards including the new card
 */
function insertItemAtBottom(cards, newCard) {
  throw new Error('Implement the insertItemAtBottom function');
}

/**
 * Remove card from the beginning of the cards
 *
 * @param {number[]} cards
 *
 * @returns {number[]} the cards without the removed card
 */
function removeItemAtBottom(cards) {
  throw new Error('Implement the removeItemAtBottom function');
}

/**
 * Compare the number of cards with the given stackSize
 *
 * @param {number[]} cards
 * @param {number} stackSize
 *
 * @returns {boolean} true if there are exactly stackSize number of cards, false otherwise
 */
function checkSizeOfStack(cards, stackSize) {
  throw new Error('Implement the checkSizeOfStack function');
}

let cards =  [2, 2, 2];
let position = 1;
let replacementCard = 5;

let jonny = setItem(cards, position, replacementCard);

console.log(jonny)