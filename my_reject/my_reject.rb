module Enumerable
  def my_reject
    result = []
    each do |i|
      result << i unless yield(i)
    end
    result
  end
end
