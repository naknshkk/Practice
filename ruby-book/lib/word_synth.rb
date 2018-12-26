class WordSynth
  #def play(original_words)
  #  # 実装は後で
  #end
  def initialize
    @effects = []
  end

  def add_effect(effect)
    @effects << effect
  end

  def play(original_words)
    @effects.inject(original_words) do |words, effect|
      effect.call(words)
    end
  end
end
