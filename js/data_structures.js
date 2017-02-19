// var colors = ["red", "blue", "green", "orange"]
// var names = ["Jeremy", "Beetus", "DiCaprio", "Armin"]

// colors.push("purple");
// names.push("Eleanor");

// horse_db = {}

// for (var i = 0; i < colors.length; i++) {
// 	horse_db[names[i]] = colors[i];
// }


// console.log(horse_db)

function Car(type, color, isFast) {

	this.type = type;
	this.color = color;
	this.isFast = isFast;
	
	this.sound = function() {
		if (this.isFast) {
			console.log("Vroooooom vrooooom!!!");
		} else {
			console.log("Put put put...");
		}
	}

}

var mynewcar = new Car("SUV", "blue", false);
console.log(mynewcar);
mynewcar.sound();
console.log("-----------")
var anothercar = new Car("Sports Car", "red", true);
console.log(anothercar);
anothercar.sound();




