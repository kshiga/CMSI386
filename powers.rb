#Programming Languages
#CMSI 386
#Homework 1
#Problem 4
#This Ruby method yields powers of base b
#starting at exponent 0 and going up to 
#limit l.
#
#By: Kaitlyn Higa and Lisa Rosenbaum
#
#

def powers(b, l)
    0.upto(l) {|x| puts"#{b**x}" if l >= (b**x)}
end

puts"#{powers(2, 4000)}"



#
#
#Avaliable at https://github.com/kshiga/CMSI386
