module Enumerable
  def my_tally
    hash = {}

    each do |el|
      if hash.key?(el)
        hash[el] += 1
      else
        hash[el] = 1
      end
    end

    hash
  end
end

module Enumerable
  def my_tally
    hash = Hash.new(0)
    each { hash[it] += 1 }
    hash
  end
end
