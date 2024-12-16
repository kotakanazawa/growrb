module Enumerable
  def my_map(&block)
    result = []
    each do |arg|
      result.push(block.call(arg)) if block_given?
    end
    result
  end
end

# module Enumerable
#   def my_map(&block)
#     map do |arg|
#       block.call(arg) if block_given?
#     end
#   end
# end

# module Enumerable
#   def my_map
#     result = []
#     each do |arg|
#       result.push(yield(arg)) if block_given?
#     end
#     result
#   end
# end
