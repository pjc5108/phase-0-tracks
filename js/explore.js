// Set a string variable equal to "hello"
// Get the strings length using a length function
// Initialize an index variable to the strings length
// Print the last indexed element(letter) in the string
// Decrement the index variable
// Keep printing the string at the indexed variable until the index variable is zero


function reverse(str) {
	var reverse_str = "" 
	for (var i = str.length; i > 0; i-- ) {
		reverse_str = reverse_str + str[i - 1];
		//console.log(str[i - 1])
		//console.log(reverse_str);
		//console.log(i);
	}
	console.log(reverse_str);
}

reverse("hello");

reverse("anticipation");
my_word = reverse("anticipation")
console.log(my_word)