for i in 1..100
  print_number = true
  if i % 3 == 0
    print "Fizz"
    print_number = false
  end
  if i % 5 == 0
    print "Buzz"
    print_number = false
  end
  if print_number
    print i
  end
  print "\n"
end
