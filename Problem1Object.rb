class Problem1
    def initialize(factor1, factor2, upTo)
       @factor1 = factor1
       @factor2 = factor2
       @upTo = upTo
    end
    
    def sumOfMultiples
        total = 0 
        @upTo.times do |i|
           if(i%@factor1 == 0 || i%@factor2 == 0)
               total += i
           end
        end
        total
    end
end

sumOf3And5MultiplesTo1000 = Problem1.new(3,5,1000)

puts sumOf3And5MultiplesTo1000.sumOfMultiples
