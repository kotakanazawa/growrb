module Enumerable
  def my_sum(obj = 0)
    result = obj

    each do |el|
      raise TypeError unless el.is_a?(Numeric) || el.is_a?(String) || el.respond_to?(:to_a)

      result += block_given? ? yield(el) : el
    end
    result
  end
end

