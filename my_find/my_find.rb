# module Enumerable
#   def my_find(error_message = nil, &block)
#     return unless block_given?

#     each do |element|
#       return element if block.call(element)
#     end

#     error_message&.call || nil
#   end
# end

module Enumerable
  def my_find(error_message = nil)
    # ブロックがなければ Enumerator を返すことで、
    # Ruby標準の find と似た挙動にし、柔軟性と一貫性を確保
    return to_enum(:my_find, error_message) unless block_given?

    # ブロック条件を満たす最初の要素を返す
    each do |element|
      return element if yield(element)
    end

    # 条件に合う要素が見つからなかった場合の処理
    # error_message が Proc ならば call する。なければ nil を返す
    error_message&.call
  end
end
