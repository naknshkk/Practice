a = 2

puts a.even?

puts a.odd?

numbers = [1,2,3,4,5,6,7,8,9,10]

even_numbers  = numbers.select{|n| n.even?}

odd_numbers = numbers.select{|n| n.odd?}

puts even_numbers

puts odd_numbers




