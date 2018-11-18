name = Array.new(3,"")
p "名前を入力してください"

name[0] = gets.chomp

p "名前を入力してください"
name[1] = gets.chomp

p "名前を入力してください"
name[2] = gets.chomp

p name[0] + "さん、おはようございます"
p name[1] + "さん、おはようございます"
p name[2] + "さん、こんばんは"
