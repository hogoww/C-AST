comparing
= aFunctionDeclaration
	super = aFunctionDeclaration
		ifFalse: [ ^ false ].
	type = aFunctionDeclaration type
		ifFalse: [ ^ false ].
	parameters = aFunctionDeclaration parameters
		ifFalse: [ ^ false ].
	^ true