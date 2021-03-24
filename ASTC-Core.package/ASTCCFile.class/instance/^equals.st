testing
= aCFile
	super = aCFile
		ifFalse: [ ^ false ].
	fileName = aCFile fileName
		ifFalse: [ ^ false ].
	isLibrary = aCFile isLibrary
		ifFalse: [ ^ false ].
	isStandard = aCFile isStandard
		ifFalse: [ ^ false ].
	header = aCFile header
		ifFalse: [ ^ false ].
	implementation = aCFile implementation
		ifFalse: [ ^ false ].
	^ true