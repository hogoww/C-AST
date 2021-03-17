testing
= aCFile
	super = aCFile
		ifFalse: [ ^ false ].
	fileName = aCFile fileName
		ifFalse: [ ^ false ].
	isHeader = aCFile isHeader
		ifFalse: [ ^ false ].
	header = aCFile header
		ifFalse: [ ^ false ].
	implementation = aCFile implementation
		ifFalse: [ ^ false ].
	^ true