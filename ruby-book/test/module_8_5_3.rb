#Enumerableモジュールは配列やハッシュ、範囲(Range)など、なんかしらの繰り返し処理ができるクラスにincludeされているモジュール
#Enumerableモジュールが定義されていると以下のメソッドを含んでいることとなる
#map select find count
irb(main):003:0> Array.include?(Enumerable)
=> true
irb(main):004:0> Hash.include?(Enumerable)
=> true
irb(main):005:0> Range.include?(Enumerable)
=> true
irb(main):006:0>

#mapメソッドってなんだっけ
#mapメソッドは、要素の数だけ繰り返しブロックを実行し、ブロックの戻り値を集めた配列を作成して返します。
numbers = ["68", "65", "6C", "6C", "6F"]
p numbers.map {|item| item.to_i(16) }
