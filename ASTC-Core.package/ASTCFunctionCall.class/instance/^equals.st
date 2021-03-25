comparing
= aFunctionCall
	super = aFunctionCall
		ifFalse: [ ^ false ].
	id = aFunctionCall id
		ifFalse: [ ^ false ].
	arguments = aFunctionCall arguments
		ifFalse: [ ^ false ].
	^ true