def prefixes(s)
    l = s.length
    0.upto(l) do|p|
    p = s[0..p]
    puts p 
    end
end

prefixes("matsumoto")
