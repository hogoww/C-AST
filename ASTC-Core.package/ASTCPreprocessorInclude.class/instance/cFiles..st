accessing
cFiles: aCFiles
	aCFiles ifNotNil: [ aCFiles parent: self ].
	cFiles := aCFiles