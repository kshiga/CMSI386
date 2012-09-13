def lines(textFile)
  textFile.to_a.select {|line| /\S/ =~ line and /^\#/ !~ line}.length
end

print "#{lines(ARGF)} \n"