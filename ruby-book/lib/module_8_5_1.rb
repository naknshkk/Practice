module Loggable
  #省略
end

module NotLoggable
  #省略
end

class Product
  include Loggable
end

Product.include?(Loggable)
#irb(main):001:0> module Loggable
#irb(main):002:1> end
#=> nil
#irb(main):003:0> class Product
#irb(main):004:1>   include Loggable
#irb(main):005:1> end
#=> Product
#irb(main):006:0> Product.include?(Loggable)
#=> true
#irb(main):007:0>


Product.include?(NotLoggable)
#irb(main):007:0> module NotLoggable
#irb(main):008:1> end
#=> nil
#irb(main):009:0> Product.include?(NotLoggable)
#=> false
#irb(main):010:0>

Product.ancestors
#irb(main):016:0> Product.ancestors
#=> [Product, Loggable, Object, Kernel, BasicObject]

irb(main):019:0> product = Product.new
=> #<Product:0x00007fd5a2b8f108>
irb(main):020:0> product.class.include?(Loggable)
=> true
irb(main):021:0> product.class.included_modules
=> [Loggable, Kernel]

#引数が時クラス、includeしているモジュール、スーパークラスのいずれかに該当すればtrue
#is_a?メソッドを使うと直接インスタンスに対してそのモジュールをincludeしているかどうかがわかる
irb(main):020:0> product.class.include?(Loggable)
=> true
irb(main):021:0> product.class.included_modules
=> [Loggable, Kernel]
irb(main):022:0> product.is_a?(Product)
=> true
irb(main):023:0> product.is_a?(Loggable)
=> true
#Objectクラスではないからエラーになった
irb(main):024:0> product.is_a?(object)
#NameError: undefined local variable or method `object' for main:Object
#	from (irb):24
#	from /usr/bin/irb:11:in `<main>'
irb(main):025:0> product.is_a?(Object)
=> true
