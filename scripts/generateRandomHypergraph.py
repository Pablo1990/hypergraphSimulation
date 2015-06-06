#!/usr/bin/python
# -*- coding: utf-8 -*
# Made by Pablo Vicente Munuera

import sys
import random

numVertices = int(sys.argv[1])

nameFile = 'hypergraph'+str(random.randint(1,100000))+'.sif'

fo = open('data/'+nameFile, 'w')

totalVertices = ["A", "B", "C", "D", "E", "F", "G", "H", "I", "J", "K", "L", "M", "N", "O"]

if numVertices>len(totalVertices):
	print("Warning: the numVertices>vertices's length")

vertices = random.sample(totalVertices,numVertices)

for vertexStart in vertices:
	for vertexEnd in vertices:
		if random.random() < 0.4:
			hyperEdge = vertexStart + ' - '+ vertexEnd
			for vertexN in vertices:
				if vertexN != vertexEnd and vertexN!=vertexStart:
					if random.random() < 0.4:
						hyperEdge += ' - ' +vertexN
					else:
						fo.write(hyperEdge + '\n')
						break

fo.close()