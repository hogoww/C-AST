visiting
visitBinaryOperator: aBinaryOperator
	super visitBinaryOperator: aBinaryOperator.
	aBinaryOperator leftOperand
		ifNotNil: [ :aLeftOperand | self assert: aLeftOperand isExpression ].
	aBinaryOperator rightOperand
		ifNotNil: [ :aRightOperand | self assert: aRightOperand isExpression ]