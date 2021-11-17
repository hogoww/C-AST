visiting
visitCFile: aCFile

	aCFile header ifNotNil: [ :aHeader | aHeader acceptVisitor: self ].
	aCFile implementation ifNotNil: [ :anImplementation | 
		anImplementation acceptVisitor: self ].
	^ self visitNode: aCFile