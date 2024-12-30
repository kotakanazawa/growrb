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
end
