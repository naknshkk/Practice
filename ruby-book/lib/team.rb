require './lib/deep_freezable'

class Team
  extend DeepFreezable

  COUNTRIES = deep_freeze(['Japan', 'India', 'US'])
end
