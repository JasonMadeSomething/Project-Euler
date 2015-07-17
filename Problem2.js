function fib(n){
  return n == 1 ? 1: n==2 ? 2: fib(n-1) + fib(n-2);
}
var nth_fib, i, total;
nth_fib = 1;
i = 1;
total = 0;
while (nth_fib <= 4000000) {
  nth_fib = fib(i);
  i +=1;
  if (nth_fib % 2 == 0) {
    total += nth_fib;
  }
}
console.log(total);