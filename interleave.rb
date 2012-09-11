def interleave(a,b)
    1.upto(a.length) do |x|
    a.insert(x+2, b.shift) 
    end
    a.insert(a.length-1, b.
end
