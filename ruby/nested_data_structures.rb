my_bedroom = {
	bed: [
		"pillows",
		"blanket",
		"teddy bear"
	],
	desk: [
		"television",
		"lamp",
		drawer = [
			"pencils",
			"paper",
			"calculator"
		]
	],
	computer: [
		"text documents",
		"programs",
		"pictures",
		"movies"
	]
}

puts my_bedroom[:bed]
puts my_bedroom[:desk][2]
puts my_bedroom[:computer][2..3]