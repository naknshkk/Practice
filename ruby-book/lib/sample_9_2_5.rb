#0除算をキャッチする場合

begin
  1 / 0
rescue ZeroDivisionError
  puts "0で除算しました"
end

#ZeroDivisionError以外の場合
#例外処理されない
begin
  #NoMethodErrorを発生させた場合
  'abc'.foo
rescue ZeroDivisionError
  puts "0で除算しました"
end

#rescue節を複数書くことで異なる例外クラスに対応することもできる
begin
  'abc'.foo
rescue ZeroDivisionError
  puts "0で除算しました"
rescue NoMethodError
  puts '存在しないメソッドが呼び出されました'
end

begin
  'abc'.foo
rescue ZeroDivisionError NoMethodError
  puts "0で除算したか、存在しないメソッドを呼び出しました"
end

#例外オブジェクトを変数に格納することも可能
begin
  'abc'.foo
rescue ZeroDivisionError, NoMethodError =>
  puts "0で除算したか、存在しないメソッドが呼び出されました"
  puts "エラー：#{e.class} #{e.message}"
end
