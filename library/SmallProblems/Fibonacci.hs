{- |
module: SmallProblems.Fibbonacci
Description: The Fibonacci sequence problem
Copyright: (c) Chenyu Lue, 2021
License: MIT
Maintainer: chenyulue@163.com
Stability: experimental
Portability: Haskell2010

This module is related to the Fibonacci sequence, which is a sequence of 
numbers such that any number, except for the first and second, is the sum
of the previous two:

\[
0, 1, 1, 2, 3, 5, 8, 13, 21, ...
\]

The value of the first Fibonacci number in the sequence is \(0\). The value 
of the second Fibonacci number is \(1\), and the value of any Fibonacci 
number, \(n\), in the sequence can be expressed using the formula:

\[
fib(n) = fib(n-1) + fib(n-2)
\]
-}
module SmallProblems.Fibonacci where

{- |
According to the definition of the Fibonacci sequence, we can write a function 
using recursion to return the /n/th Fibonacci number easily.
-}
naiveFib :: Integer -> Integer
naiveFib 0 = 0                                -- The base case 1
naiveFib 1 = 1                                -- The base case 2
naiveFib n = naiveFib (n-1) + naiveFib (n-2)  -- The recursive case