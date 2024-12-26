module Enumerable
  def my_partition
    result = []
    true_array = []
    false_array = []
    each do |i|
      if yield(i)
        true_array << i
      else
        false_array << i
      end
    end
    result.push(true_array, false_array)
  end
end
