import os 
import sys 

terraform = sys.argv[1].split('\t')
compose = sys.argv[2].split(' ')

env = open(".env","a")
for line in compose:
    env.write(line+"\n")
env.close

locals = open("locals.tf","a")
for line in terraform:
    locals.write(line+"\n")
locals.close


