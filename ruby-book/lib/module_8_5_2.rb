#priceと言うメソッドがinclude先に定義されていることを前提としたモジュール（値札を返すモジュール）の定義
irb(main):001:0> module Taggable
irb(main):002:1>   def price_tag
irb(main):003:2>     "#{price}\U+FFE5"
irb(main):004:2>   end
irb(main):005:1> end
=> :price_tag
irb(main):006:0> class Product
irb(main):007:1>   include Taggable
irb(main):008:1>   def price
irb(main):009:2>     1000
irb(main):010:2>   end
irb(main):011:1> end
=> :price
irb(main):012:0> product = Product.new
=> #<Product:0x00007fec39032fa0>
irb(main):013:0> product.price_tag
=> "1000"

#よくわからんからとりあえず日本語も書き写す
#Taggableモジュールのprice_tagメソッドは、Productクラスのpriceメソッドと連携して目的の処理を達成している
#上のコードには明示的に書いていないが、モジュールメソッドを実行する際のselfはinclude先のクラスのインスタンスになる←？？？

#上のコードではProductクラスに定義したpriceメソッドがprice_tagメソッド内で呼び出せる
#self付きで呼び出しても構わない
#よくわかんねえ
