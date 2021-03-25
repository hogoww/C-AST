comparing
= aDeclarationStatement
	super = aDeclarationStatement
		ifFalse: [ ^ false ].
	declaration = aDeclarationStatement declaration
		ifFalse: [ ^ false ].
	^ true