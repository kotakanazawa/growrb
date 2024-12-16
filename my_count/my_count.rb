module Enumerable
  def my_count(arg = nil)
    if arg
      inject(0) { |count, element| count + (element == arg ? 1 : 0) }
    elsif block_given?
      inject(0) { |count, element| count + (yield(element) ? 1 : 0) }
    else
      inject(0) { |count, _| count + 1 }
    end
  end
end
