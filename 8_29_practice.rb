fruit_list = Array.new(5, "")

i = 0

while i < 5
  p "果物の名前を入力してください>"
  fruit = gets.chomp
  if fruit == "."
    break
  end

  fruit_list[i] = fruit

  i = i + 1
end

puts ""
puts "------------------------"
i = 0

while i < fruit_list.size
  puts fruit_list[i]
  i = i + 1
end
puts "------------------------"
