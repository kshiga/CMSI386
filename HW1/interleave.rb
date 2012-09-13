#Programming Languages
#CMSI 386
#Homework 1
#Problem 5
#This Ruby method interleaves two arrays. If
#the arrays are not of the same length, the
#elements of the longer array should end  
#up at the end of the result array.
#
#By: Kaitlyn Higa and Lisa Rosenbaum
#
#

def interleave(a,b)
	a.zip(b).flatten(1).compact
end



#
#
#Avaliable at https://github.com/kshiga/CMSI386/tree/master/HW1
