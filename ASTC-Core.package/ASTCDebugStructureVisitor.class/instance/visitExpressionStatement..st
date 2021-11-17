visiting
visitExpressionStatement: anExpressionStatement

	super visitExpressionStatement: anExpressionStatement.
	anExpressionStatement expression ifNotNil: [ :anExpression | 
		self assert: anExpression isExpression ]