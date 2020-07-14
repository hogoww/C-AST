testing
= aCastOperator
	super = aCastOperator
		ifFalse: [ ^ false ].
	type = aCastOperator type
		ifFalse: [ ^ false ].
	^ true