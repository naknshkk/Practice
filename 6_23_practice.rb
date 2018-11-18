tango = ["knowledge", "infomation", "system", "library", "metadeata"]

while true
  puts("単語を入力してください")
  puts("終わる時は . (ピリオド)を入力してください")
  a = gets.chomp
  if a == "."
    break
  end

  j = 0
  while j < tango.size
    if a == tango[j]
      puts(a, "は辞書に登録されています")
      break
    end
    j = j + 1
  end
  if j == tango.size
    puts(a, "を登録します")
    tango.push(a)
  end
end
tango.each{|value|
  puts value
}
