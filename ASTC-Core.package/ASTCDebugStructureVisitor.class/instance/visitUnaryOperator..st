visiting
visitUnaryOperator: anUnaryOperator
	super visitUnaryOperator: anUnaryOperator.
	anUnaryOperator operand
		ifNotNil: [ :anOperand | self assert: anOperand isExpression ]