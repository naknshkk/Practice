#ヒアテキストを知らなかったから写経
#a = <<TEXT
# これはヒアドキュメントです
# 複数行に渡る長い文字列を作成するのに便利です
# TEXT

#puts a

def some_method
  <<-TEXT
  これはヒアドキュメントです
  <<-を使うと識別子をインデントさせることが出来ます。
  TEXT
end

puts some_method

a = "Ruby"

a.prepend(<<TEXT)
java
python
PHP
TEXT

puts a




