// Release 0

// - Identify the array being searched
// - Initialize a variable to the first element of that array
// - Compare that variable's length to the length of the next element in the array
// - If:
//		-The variable is longer, the variable equals itself
// - Else:
//		-The variable gets updated to the value of that element.
// - Do this until there are no more comparisons to make

// Release 1

// - Create two arrays using the keys of each object.
// - For each element in an array, check to see if that element exists in the other array
// of the same type (either keys or values).
// - If it does, compare the values at that index.
// - If they match as well, return true
// - If not, continue until all elements in an array have been checked.

// Release 2

// - Initialize a new array
// - Initialize a new word variable
// - Generate a random number 'x' from 1 to 10
// - Until a counter reaches x
//		- Generate a random number and add it to the new word variable
//		- Increment counter
// - Add the new word to the new array
// - Clear the new word variable
// - Do this as many times as specified in the argument


function SearchLongest(array) {

	this.array = array;

	current_long = array[0];

	for (z = 1; z < array.length; z++) {
		if ( current_long.length > array[z].length) {
			current_long = current_long;
		} else {
			current_long = array[z];
		}
	}
	console.log("The longest word or phrase in the given array is " + current_long + ".");
}


obj1 = { 'one': 1 , 'two': 2, 'three': 3, 'six': 6, 'seven': 7, 'five': 5 };
obj2 = { 'two': 2 , 'three': 3 };
obj3 = { 'four': 4, 'five': 5 };


function KeyMatch(object1, object2) {

	this.object1 = object1;
	this.object2 = object2;

	key1_array = Object.keys(object1);
	key2_array = Object.keys(object2);

	any_match = false;
	for (i = 0; i < key1_array.length; i++) {
		for (j = 0; j < key2_array.length; j++) {
			if ( key1_array[i] == key2_array[j]) {
				if ( object1[key1_array[i]] == object2[key2_array[j]] ) {
					any_match = true;
					break;
				}
			}
		}
	}
	console.log(any_match);

}


function RandWords(num_words) {

	this.num_words = num_words;

	word_list = [];
	new_word = "";
	word_length = Math.floor((Math.random() * 10) + 1);
	alphabet = "abcdefghijklmnopqrstuvwxyz"

	while ( word_list.length < num_words) {
		while ( new_word.length < word_length) {
			new_word = new_word + alphabet[Math.floor(Math.random() * 26)];
		}
		word_list.push(new_word);
		new_word = "";
		word_length = Math.floor((Math.random() * 10) + 1);
	}
	console.log(word_list);
	return word_list;

}

 // SearchLongest(RandWords(5));

for (q = 0; q < 10; q++) {
	x = RandWords(5);
	SearchLongest(x);
}







// k1_arr = Object.keys(obj1);
// k2_arr = Object.keys(obj2);
// console.log(k1_arr);
// console.log(k2_arr);
// console.log("-------------");
// console.log(obj2[k2_arr[0]]);


// KeyMatch(obj1, obj3);
// KeyMatch(obj2, obj3);





// x = ["long phrase","longer phrase", "short phrase", "hi", "hello", "longest phrase in the world"];
// y = ["This", "Is", "Really", "Fun", "Thats a bingo"];

// SearchLongest(x);

// SearchLongest(y);



