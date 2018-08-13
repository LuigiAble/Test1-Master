animals = [
  "A" => true,
  "B" => 12.32,
  "C" => "Fine",
  "D" => 10,
  "E" => false
]


animals.each { |type, value| puts "#{type}: #{value}" }


oddNumbers = [[1,3], [5,7], [9,11], [13,15]]

oddNumbers.each { |num|
  num.each { |odd| puts "#{odd}" }
}
