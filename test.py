#!/usr/bin/python

print "Running yaml parser example script"


import yaml

stream = open("data.yml", 'r')
docs=yaml.load_all(stream)

#print docs
for doc in docs:
  print doc['cell']
  print doc['instances']

