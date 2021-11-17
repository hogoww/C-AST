accessing
preamble: aPreamble

	aPreamble ifNotNil: [ aPreamble parent: self ].
	preamble := aPreamble