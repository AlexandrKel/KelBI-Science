def fibonacci (k):
    fib1 = 1
    fib2 = 1
    k = int(input())
 
    for i in range(2, k):
        fib1, fib2 = fib2, fib1 + fib2
        print(fib1)
        print(fib2, end=' ') 
fibonacci('k')
