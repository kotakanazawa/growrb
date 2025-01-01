module Enumerable
  def my_inject(initial_value = nil, sym = nil, &block)
    if sym
      block = sym.to_proc
    elsif initial_value.is_a?(Symbol)
      block = initial_value.to_proc
      initial_value = nil
    end

    # 初期値の設定
    accumulator = initial_value.nil? ? first : initial_value

    drop(initial_value.nil? ? 1 : 0).each do |element|
      accumulator = block.call(accumulator, element)
    end

    accumulator
  end
end
