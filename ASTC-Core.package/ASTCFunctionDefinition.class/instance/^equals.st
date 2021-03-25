comparing
= aFunctionDefinition
	super = aFunctionDefinition
		ifFalse: [ ^ false ].
	body = aFunctionDefinition body
		ifFalse: [ ^ false ].
	^ true