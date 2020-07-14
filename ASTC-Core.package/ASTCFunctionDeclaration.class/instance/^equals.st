testing
= aFunctionDeclaration
	super = aFunctionDeclaration
		ifFalse: [ ^ false ].
	qualifiers = aFunctionDeclaration qualifiers
		ifFalse: [ ^ false ].
	type = aFunctionDeclaration type
		ifFalse: [ ^ false ].
	parameters = aFunctionDeclaration parameters
		ifFalse: [ ^ false ].
	^ true