module DeepFreezable
  def deep_freeze(array_or_hash)
    case array_or_hash
    when Array
      array_or_hash.each do |element|
        element.freeze
      end
    when Hash
      array_or_hash.each do |key, value|
        key.freeze
        value.freeze
      end
    end
    #配列自信をfreeze(かつ、これがメソッドの戻り値となる)
    array_or_hash.freeze
  end
end
