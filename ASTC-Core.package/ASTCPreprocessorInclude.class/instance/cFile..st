accessing
cFile: aCFile
	aCFile ifNotNil: [ aCFile parent: self ].
	cFile := aCFile