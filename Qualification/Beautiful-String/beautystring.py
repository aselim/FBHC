#! /usr/bin/python
import sys
from collections import OrderedDict
fname=sys.argv[1]
O=OrderedDict
with open(fname) as f:
	content=f.readlines()
f.close()
content=content[1:]
linecount=0;
#lines=['ABbCcc' , "Good luck in the Facebook Hacker Cup this year!" , "Ignore punctuation, please :)" ,"Sometimes test cases are hard to make up" , "So I just go consult Professor Dalves"]

for m in content:
	linecount+=1
	m=m.lower()
	lis=list(m)
	lis=O.fromkeys(lis).keys()
	lis.sort()
	sum=0
	order=list()
	for w in lis:
		if w.isalpha():order.append(m.count(w))
	order.sort()
#print lis
#print order
#print "Order length: ",len(order)
#print "lis legnth: ",len(lis)
	l=len(order)-1
	for od in order:
#		print "sum = ", sum , "+" , (26-l) , "*" , od  
		sum+=(26-l)*od	
		l-=1
#	print "--Letter--"
#	print "letter",w," Threshold:", (24-l) ," Occure no. ",m.count(w)," Weight:",(24-l)*m.count(w);
#	print "--Count--"
#	print m.count(w) 
#	print "cross"
#	print (26-l)
#	print w.isalpha()
#	if w.isalpha():sum+=(24-l)*m.count(w)
#	l-=1
	print  "Case #",linecount,":",sum
