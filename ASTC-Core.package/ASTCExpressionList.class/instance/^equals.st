comparing
= anExpressionList

	super = anExpressionList ifFalse: [ ^ false ].
	expressions = anExpressionList expressions ifFalse: [ ^ false ].
	^ true