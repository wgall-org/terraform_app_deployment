import os 
import sys 

content = sys.argv[1].split('\t')

f = open("locals.tf","a")
for line in content:
    f.write(line+"\n")
f.close

