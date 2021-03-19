foo x =
  case x of 
    0 -> 1
    1 -> 5
    2 -> 2
    _ -> -1

main = print (foo 0)
       print (foo 1)
       print (foo 2)
       print (foo 10)
