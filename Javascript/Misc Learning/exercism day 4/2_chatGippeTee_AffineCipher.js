export const checky = ['a','b','c','d','e','f','g','h','i','j','k','l','m','n','o','p','q','r','s','t','u','v','w','x','y','z'];
export const abc = 'abcdefghijklmnopqrstuvwxyz'; // int :: bool

export function isCoPrime(varA) {
    if(varA === 2 || varA === 13) {
        return true;
    } else if (varA % 2 === 0 || varA % 13 === 0) {
        throw new Error('a and m must be coprime.');
    } else {
        return true;
    } 
}

export function LesMapDaLetta2ANumba(phrase) {
    let list4This = [];
    phrase = phrase.toLowerCase(); // Fix: reassigning 'phrase'
    for (let i = phrase.length - 1; i >= 0; i--) {
        list4This.push(convertToNumber(phrase[i])); // Fix: calling 'convertToNumber'
    }
    return list4This;
}

export function convertToNumber(letta2Do) {
    return checky.indexOf(letta2Do); // Fix: correct the usage of 'indexOf'
}

export function index2Letta(index) {
    if (index >= 0 && index < abc.length) {
        return abc[index];
    } else {
        return ''; // Return empty string for out of bounds or invalid indices
    }
}


export function encodeDatPhrase(a, index) {
    const encoded = (a * index) % 26;
    return encoded === 0 ? 25 : encoded - 1; // Adjust to handle the case where the result is 0
}

/*const encode = (phrase, key) => {
    const list4This = LesMapDaLetta2ANumba(phrase); // Obtain the list of numbers representing letters
    const encodedPhrase = list4This.map((item) => index2Letta(encodeDatPhrase(key, item))); // Map each encoded number back to a letter
    return encodedPhrase.join(''); // Join the array into a string
};*/

export const encode = (phrase, key) => {
    const list4This = LesMapDaLetta2ANumba(phrase); // Obtain the list of numbers representing letters
    const encodedPhrase = list4This.map((item) => index2Letta(encodeDatPhrase(key, item))); // Map each encoded number back to a letter
    return encodedPhrase.map(String).join(''); // Convert elements to strings and join into a string
};


/*const encode = (phrase, key) => {
    console.log("Phrase:", phrase); // Debugging statement
    console.log("Key:", key); // Debugging statement
    const list4This = LesMapDaLetta2ANumba(phrase); // Obtain the list of numbers representing letters
    console.log("List4This:", list4This); // Debugging statement
    const encodedPhrase = list4This.map((item) => index2Letta(encodeDatPhrase(key, item))); // Map each encoded number back to a letter
    console.log("Encoded Phrase:", encodedPhrase); // Debugging statement
    return encodedPhrase.join(''); // Join the array into a string
};
*/

const phrase = "yes";
const key = 7; // Example key
console.log(encode(phrase, key)); // Output: 'aolli'