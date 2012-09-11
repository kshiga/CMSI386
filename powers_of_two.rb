def powers_of_two(x)
        for n in 1..x 
	    s = 2**(n-1)
            print"#{s}\n" if s <= x
        end

end

print "#{powers_of_two(800)} \n"
