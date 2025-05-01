function reverseString(str) {
  if (str === "") {
    console.log("timmy");
    return "";
  } else {
    // console.log("Calling reverseString with argument:", str.substr(1));
    // console.log("Current character to append:", str.charAt(0));
    console.log("Reversed string so far:", reverseString(str.substr(1)) + str.charAt(0));
    return reverseString(str.substr(1)) + str.charAt(0);
  }
}
console.log(reverseString("hello"));
