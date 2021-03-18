testing
= aCFile
	super = aCFile
		ifFalse: [ ^ false ].
	fileName = aCFile fileName
		ifFalse: [ ^ false ].
	header = aCFile header
		ifFalse: [ ^ false ].
	implementation = aCFile implementation
		ifFalse: [ ^ false ].
	^ true