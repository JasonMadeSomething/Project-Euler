fib = (n) ->
    if n == 1 then 1 else if n == 2 then 2 else fib(n - 1) + fib(n - 2)
    
is_even = (n) ->
    if n % 2 == 0 then true else false
    
sum_of_even_fibs_to = (n) ->
    nth_fib = 1
    i = 1
    total = 0
    while (nth_fib <= n )
        nth_fib = fib i
        i++
        if is_even nth_fib then total += nth_fib
    total

console.log sum_of_even_fibs_to 4000000