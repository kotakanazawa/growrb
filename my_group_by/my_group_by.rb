module Enumerable
  def my_group_by
    return to_enum(:my_group_by) unless block_given?

    result = {}
    each do |element|
      key = yield(element)
      result[key] ||= []
      result[key] << element
    end
    result
  end
end
