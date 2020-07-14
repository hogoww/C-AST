testing
= anUnaryOperator
	super = anUnaryOperator
		ifFalse: [ ^ false ].
	operand = anUnaryOperator operand
		ifFalse: [ ^ false ].
	^ true