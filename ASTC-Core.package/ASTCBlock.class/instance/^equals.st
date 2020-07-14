testing
= aBlock
	super = aBlock
		ifFalse: [ ^ false ].
	statements = aBlock statements
		ifFalse: [ ^ false ].
	declarations = aBlock declarations
		ifFalse: [ ^ false ].
	^ true