comparing
= aRawDeclaration

	super = aRawDeclaration ifFalse: [ ^ false ].
	rawDeclaration = aRawDeclaration rawDeclaration ifFalse: [ ^ false ].
	varName = aRawDeclaration varName ifFalse: [ ^ false ].
	^ true