comparing
= anExpressionStatement
	super = anExpressionStatement
		ifFalse: [ ^ false ].
	expression = anExpressionStatement expression
		ifFalse: [ ^ false ].
	^ true