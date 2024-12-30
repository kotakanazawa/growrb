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

  def my_include?(arg)
    each do |el|
      return true if arg === el
    end
    false
  end

  def my_one?(arg = nil)
    count = 0
    each do |el|
      if arg
        count += 1 if arg === el
      elsif block_given?
        count += 1 if yield(el)
      else
        count += 1 if el
      end
    end

    true if count == 1
  end

  def my_none?(arg = nil)
    count = 0
    each do |el|
      if arg
        count += 1 if arg === el
      elsif block_given?
        count += 1 if yield(el)
      else
        count += 1 if el
      end
    end

    true if count.zero?
  end
end
