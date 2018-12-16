module DeepFreezable
  def deep_freeze(array_or_hash)
    array_or_hash.each do |element|
      element.freeze
    end

    #配列自信をfreeze(かつ、これがメソッドの戻り値となる)
    array_or_hash.freeze
  end
end
