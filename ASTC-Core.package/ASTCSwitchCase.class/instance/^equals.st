testing
= aSwitchCase
	super = aSwitchCase
		ifFalse: [ ^ false ].
	expression = aSwitchCase expression
		ifFalse: [ ^ false ].
	body = aSwitchCase body
		ifFalse: [ ^ false ].
	^ true