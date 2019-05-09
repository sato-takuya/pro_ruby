class WordSynth
  def initialize
    @effects = []
  end

  def add_effect(effect)
    @effect << effect
  end

  def play(original_word)
    @effect.inject(original_word) do |words,effect|
      effect.call(words)
    end
  end
end