# finds sum of all multiples of two factors
class Problem1
  def initialize(factor1, factor2, upTo)
    @factor1 = factor1
    @factor2 = factor2
    @up_to = upTo
  end

  def sum_of_multiples
    total = 0
    @up_to.times do |i|
      total += i if i % @factor1 == 0 || i % @factor2 == 0
    end
    total
  end
end

# Finds sum of all multiples of arbitrary number of factors
class Problem1Args
  def initialize(*factors, upTo)
    @factors = factors
    @up_to = upTo
    @factors.sort!
  end

  def clean_factors
    @factors.uniq!
    @factors.delete_if do |i|
      result = false
      @factors.each do |j|
        result = true if i % j == 0 && @factors.index(i) != @factors.index(j)
      end
      result
    end
  end

  # TODO: Finish this method
  def sum_of_multiples
    @up_to.times do |i|
      
    end
  end
end
