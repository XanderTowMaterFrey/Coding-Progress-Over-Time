// "use strict";
//
const assert = require("node:assert");

const y = { a: 1, b: 2 }; // 01010011
const x = { a: 1, b: 2 }; // 01010010
const king = { a: 1, b: 2 }; // 01010010
const w = y; // === y = w  // 01010011

assert.strictEqual(y, w, "y and y are the same");

//
// this will throw an error if it is uncommented
// w.a = 5;

(async () => {
  assert.equal(1, "1"); // Passes because 1 == '1' (type coercion)
  assert.equal(1, 1); // Passes because 1 == 1
  // assert.equal(1, 2); // Fails because 1 != 2

  assert.deepEqual(x, { a: 1, b: 2 });
  assert.deepEqual(x, y);
  assert.deepEqual(x, king);
  // assert.deepEqual( x, y, "this fails, the one above does not despite being the same",;
  console.log("All assert.equal tests passed!");
  assert.strictEqual(w, y);
})(/* this is the end of the IIFE and it calls itself, it takes parameteros, but in this case it doesn't take any parameters as the function doesn't need any parameters*/)
  /*this is charlies error catching*/ .catch((error) => {
    console.error(error);
    process.exit(1);
  })
  .finally(() => process.exit(0));
