def collatz_sequence(n)
  sequence = []
  j = n
  until n == 1
    if n%2 == 0 
        n = n/2
      else
        n = 3*n + 1
    end
    sequence.push(n)
    if j < 8
      print "->#{n}"
    end
  end

  return sequence
end
def longest_collatz(x)
  i = 1
  long_seq = []
  until i == x+1
    if i == 1 
      print "#{i}"
    elsif i < 8 
      print "\n"
      print "#{i}"
    end
    seq = collatz_sequence(i)
    if seq.length > long_seq.length
      long_seq = seq
      i+=1
    else
      i+=1
    end
  end
  print "\n"
  puts "Longest Collatz Sequence length is #{long_seq.length}"
end
longest_collatz(10)