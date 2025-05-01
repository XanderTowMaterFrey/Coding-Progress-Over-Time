const checky = [1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,21,22,23,24,25,26];
const abc = 'abcdefghijklmnopqrstuvwxyz'; // int :: bool

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
    return checky.indexOf(letta2Do) + 1; // Fix: correct the usage of 'indexOf'
}

export function index2Letta(index) {
    return abc[index - 1]; // Fix: return the correct letter from 'abc'
}

export function encodeDatPhrase(a, index) {
    return ((a * index) % 26); // Fix: corrected the formula
}

export const encode = (phrase, key) => {
    const list4This = LesMapDaLetta2ANumba(phrase); // Fix: call 'LesMapDaLetta2ANumba' correctly
    const encodedPhrase = list4This.map((item, index) => index2Letta(encodeDatPhrase(key, item))); // Fix: Corrected mapping and calling functions
    return encodedPhrase.join(''); // Fix: join the array to form a string
};

