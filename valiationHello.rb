#terminalから入力された国の挨拶を返すクラス

def valiationCountryHello

  puts("挨拶の言葉を知りたい国を入力して下さい")

  country = gets.chomp

  if(country == "Italy" || country == "イタリア")
    puts "ciao"
  elsif(country == "japan" || country == "日本")
    puts "おはよう"
  elsif(country == "us" || country ==  "アメリカ")
    puts "Hello"
  else
    puts "しーらない"
  end
end

greeting = valiationCountryHello

greeting
