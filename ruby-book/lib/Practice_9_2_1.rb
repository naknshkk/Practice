#irb(main):001:0> module Greeter
#irb(main):002:1>   def hello
#irb(main):003:2>     'hello'
#irb(main):004:2>   end
#irb(main):005:1> end
#=> :hello

puts 'Start'

module Greeter
  def hello
    'hello'
  end
end

begin
  greeter = Greeter.new
rescue
  puts '例外が発生したが、このまま続行する'
end


puts 'End'
