visiting
visitExpressionStatement: anExpressionStatement

	anExpressionStatement expression ifNotNil: [ :anExpression | 
		anExpression acceptVisitor: self ]