comparing
= aLiteral

	super = aLiteral ifFalse: [ ^ false ].
	value = aLiteral value ifFalse: [ ^ false ].
	^ true