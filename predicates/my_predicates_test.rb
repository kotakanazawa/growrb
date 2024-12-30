require 'minitest/autorun'
require_relative 'my_predicates'

class PredicatesTest < Minitest::Test
  def test_all_with_block
    assert(%w[ant bear cat].my_all? { it.length >= 3 })
    refute(%w[ant bear cat].my_all? { it.length >= 4 })
  end

  def test_all_with_pattern
    refute %w[ant bear cat].my_all?(/t/)
    assert [1, 2i, 3.14].my_all?(Numeric)
    refute [nil, true, 99].my_all?
    assert [].my_all?
  end
end
