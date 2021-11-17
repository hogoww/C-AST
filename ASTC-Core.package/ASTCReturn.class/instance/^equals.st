comparing
= aReturn

	super = aReturn ifFalse: [ ^ false ].
	expression = aReturn expression ifFalse: [ ^ false ].
	^ true