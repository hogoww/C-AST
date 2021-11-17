comparing
= aBinaryOperator

	super = aBinaryOperator ifFalse: [ ^ false ].
	leftOperand = aBinaryOperator leftOperand ifFalse: [ ^ false ].
	rightOperand = aBinaryOperator rightOperand ifFalse: [ ^ false ].
	^ true