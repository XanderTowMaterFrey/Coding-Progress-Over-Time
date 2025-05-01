// Function to encode text using Run-Length Encoding (RLE)
export function encode(text) {
    let encodedText = '';
    let count = 1;
    for (let i = 0; i < text.length; i++) {
        if (text[i] === text[i + 1]) {
            count++;
        } else {
            encodedText += (count === 1 ? '' : count) + text[i];
            count = 1;
        }
    }
    return encodedText;
}

// Function to decode text encoded with Run-Length Encoding (RLE)
export function decode(encodedText) {
    let decodedText = '';
    let count = '';
    for (let i = 0; i < encodedText.length; i++) {
        if (!isNaN(parseInt(encodedText[i]))) {
            count += encodedText[i];
        } else {
            if (count === '') {
                decodedText += encodedText[i];
            } else {
                decodedText += encodedText[i].repeat(count);
                count = '';
            }
        }
    }
    return decodedText;
}


