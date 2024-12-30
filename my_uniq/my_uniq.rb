module Enumerable
  def my_uniq
    hash = {}

    each do |el|
      key = block_given? ? yield(el) : el
      hash[key] ||= el
    end

    hash.values
  end
end
