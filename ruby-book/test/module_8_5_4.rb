#Comparableモジュールと<=>演算子
mbp-3:ruby-book kokinakanishi$ irb
irb(main):001:0> 2<=>1
=> 1
irb(main):002:0> 2<=>2
=> 0
irb(main):003:0> 1<=>2
=> -1
#文字列なのに''""を使わないで比較しようとしてエラーになった
#irb(main):004:0> 1<=>abc
#NameError: undefined local variable or method `abc' for main:Object
#	from (irb):4
#	from /usr/bin/irb:11:in `<main>'
irb(main):005:0> 1<=>"abc"
=> nil
irb(main):006:0> "xyz"<=>"abc"
=> 1
irb(main):007:0> "ABC"<=>"xyz"
=> -1
irb(main):008:0> "xyz"<=>"XYZ"
=> 1
irb(main):009:0> class Tempo
irb(main):010:1>   include Comparable
irb(main):011:1>   attr_reader :bpm
irb(main):012:1>   def initialize(bpm)
irb(main):013:2>     @bpm = bpm
irb(main):014:2>   end
irb(main):015:1>   def <=> (other)
irb(main):016:2>     if other.is_a?(Tempo)
irb(main):017:3>     bpm <=> other.bpm
irb(main):018:3>     else
irb(main):019:3*     nil
irb(main):020:3>     end
irb(main):021:2>   end
irb(main):022:1>   def inspect
irb(main):023:2>     "#{bpm}bpm"
irb(main):024:2>   end
irb(main):025:1> end
=> :inspect
irb(main):026:0> t_120 = Tempo.new(120)
=> 120bpm
irb(main):027:0> t_180 = Tempo.new(180)
=> 180bpm
irb(main):028:0> t_120 > t_180
=> false
irb(main):029:0> t_120 < t_180
=> true
irb(main):030:0> t_120 == t_180
=> false
irb(main):031:0> tempos = [Tempo.new(180), Tempo.new(60), Tempo.new(120)]
=> [180bpm, 60bpm, 120bpm]
irb(main):032:0> tempos.sort
=> [60bpm, 120bpm, 180bpm]
irb(main):033:0> tempos.sort
