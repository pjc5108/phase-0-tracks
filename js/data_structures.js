var colors = ["red", "blue", "green", "orange"]
var names = ["Jeremy", "Beetus", "DiCaprio", "Armin"]

colors.push("purple");
names.push("Eleanor");

horse_db = {}

for (var i = 0; i < colors.length; i++) {
	horse_db[names[i]] = colors[i];
}


console.log(horse_db)

