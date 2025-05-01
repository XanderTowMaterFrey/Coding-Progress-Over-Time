const test = require("node:assert");
const {
bitwiseOR,
bitwiseXOR,
bitwiseAND,
} = require("../codeSnippets/cS1");

test.assertEquals(bitwiseAND(7, 12), 4)
test.assertEquals(bitwiseOR(7, 12), 15)
test.assertEquals(bitwiseXOR(7, 12), 11)

test.assertEquals(bitwiseAND(32, 17), 0)
test.assertEquals(bitwiseOR(32, 17), 49)
test.assertEquals(bitwiseXOR(32, 17), 49)

test.assertEquals(bitwiseAND(13, 19), 1)
test.assertEquals(bitwiseOR(13, 19), 31)
test.assertEquals(bitwiseXOR(13, 19), 30)
