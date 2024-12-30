module Enumerable
  def my_all?(arg = nil)
    each do |el|
      if arg
        return false unless arg === el
      elsif block_given?
        return false unless yield(el)
      else
        return false unless el
      end
    end
    true
  end

  def my_any?(arg = nil)
    each do |el|
      if arg
        return true if arg === el
      elsif block_given?
        return true if yield(el)
      else
        return true if el
      end
    end
    false
  end
end
