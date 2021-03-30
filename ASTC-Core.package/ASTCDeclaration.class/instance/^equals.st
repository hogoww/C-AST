comparing
= aDeclaration
	super = aDeclaration
		ifFalse: [ ^ false ].
	qualifiers = aDeclaration qualifiers
		ifFalse: [ ^ false ].
	id = aDeclaration id
		ifFalse: [ ^ false ].
	^ true