visiting
visitExpressionList: anExpressionList
	anExpressionList expressions
		ifNotNil:
			[ :expressions | expressions do: [ :anExpressions | anExpressions acceptVisitor: self ] ].
	^ self visitExpression: anExpressionList