testing
= aVariableDeclaration
	super = aVariableDeclaration
		ifFalse: [ ^ false ].
	type = aVariableDeclaration type
		ifFalse: [ ^ false ].
	^ true