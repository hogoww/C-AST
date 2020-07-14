testing
= aDeclaration
	super = aDeclaration
		ifFalse: [ ^ false ].
	id = aDeclaration id
		ifFalse: [ ^ false ].
	^ true