def powers(b, l)
        for n in 1..l 
	    s = b**(n-1)
            print"#{s}\n" if s <= l
        end

end

powers(3, 400)

