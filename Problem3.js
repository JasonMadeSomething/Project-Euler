function isPrime(n){
  if( n%1 || n<2 ) return false;
  if (n%2==0) return (n==2);
  if (n%3==0) return (n==3);
  var roof = Math.sqrt(n);
  for (i=5; i<= roof; i+=6){
    if(n%i==0) return false;
    if(n%(i+2)==0) return false;
  }
  return true;
}

function largestPrimeFactor(num){
  var roof = Math.floor(Math.sqrt(num))
  for (i=roof; i > 0; i--){
    if (num%i == 0 && isPrime(num)){
      return i;
    }
    console.log(i);
  }
}

console.log(largestPrimeFactor(600851475143))
