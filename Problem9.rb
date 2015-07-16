# Does not use full Euler parametrization and thus produces a and b backwards

# Copied from Project Site:
# As pointed out in several posts, this problem can be solved without programming.
# However, some of them simply assumes that a=m^2-n^2, b=2mn, c=m^2+n^2 
# (let's forget about the condition a<b here),
# which is incomplete because this is not the parametrization of all Pythagorean triplets.
# The correct formulation should be a=k(m^2-n^2), b=2mnk, c=k(m^2+n^2), with gcd(m,n)=1 and m-n being odd and positive.
# Again, we do not assume a<b here.
# By simple algebra, 1000=a+b+c=2km(m+n). Notice that m+n is odd and 2n<m+n<2m. 
# m+n can only be 5 or 25. So the two possible solutions are (m,n,k)=(4,1,25) and (m,n,k)=(20,5,1). 
# However, the second one is not valid as gcd(m,n)=5. 
# Fortunately/Unfortunately, the two possibilities eventually give the same triplet (a,b,c)=(200,375,425). 
# This is the reason why the incomplete parameterization still gives the correct answer in this problem.

def makes1000?(a,b,c)
  return true if (a+b+c) == 1000
  false
end

def a(m,n)
  m**2 - n**2
end

def b(m,n)
  2*m*n
end

def c(m,n)
  m**2 + n**2
end
n = 1
m = 3
solved = false
until solved
  m+=1
  while n < m
    n +=1
    solved = true if makes1000?(a(m,n),b(m,n),c(m,n))
    break if solved
  end
  n = 1 unless solved
  puts "a = #{a(m,n)},b = #{b(m,n)},c = #{c(m,n)}"
end
puts "Magic numbers are a = #{a(m,n)},b = #{b(m,n)},c = #{c(m,n)}"
puts "product is: #{a(m,n)*b(m,n)*c(m,n)}"