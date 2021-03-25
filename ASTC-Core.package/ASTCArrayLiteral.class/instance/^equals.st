comparing
= anArrayLiteral
	super = anArrayLiteral
		ifFalse: [ ^ false ].
	literals = anArrayLiteral literals
		ifFalse: [ ^ false ].
	^ true