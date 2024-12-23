module Enumerable
  def my_each_with_object(arg, &block)
    result_array = []
    if arg.instance_of?(Array)
      each do |num|
        result_array << block.call(num, [])
      end
      result_array.flatten
    elsif arg.instance_of?(String)
      each do |str|
        result_array << block.call(str, '')
      end
      arg.concat(result_array.join)
    end
  end
end

module Enumerable
  def my_each_with_object(obj)
    each do |element|
      yield(element, obj)
    end
    obj
  end
end
