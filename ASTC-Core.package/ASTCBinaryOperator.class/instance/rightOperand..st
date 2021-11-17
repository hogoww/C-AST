accessing
rightOperand: aRightOperand

	aRightOperand ifNotNil: [ aRightOperand parent: self ].
	rightOperand := aRightOperand