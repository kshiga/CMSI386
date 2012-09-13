#Programming Languages
#CMSI 386
#Homework 1
#Problem 8
#This Ruby script intakes a file and 
#returns the number of non-blank,
#uncommented lines. 
#
#By: Kaitlyn Higa and Lisa Rosenbaum
#
#

def lines(textFile)
  textFile.to_a.select {|line| /\S/ =~ line and /^\#/ !~ line}.length
end

print "#{lines(ARGF)} \n"


#
#
#Avaliable at https://github.com/kshiga/CMSI386/tree/master/HW1
