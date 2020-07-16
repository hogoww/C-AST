visiting
visitExpressionList: anExpressionList
	super visitExpressionList: anExpressionList.
	anExpressionList expressions
		ifNotNil: [ :expressions | 
			expressions
				do: [ :anExpressions | self assert: anExpressions isExpression ] ]