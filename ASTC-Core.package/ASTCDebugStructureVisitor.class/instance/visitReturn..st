visiting
visitReturn: aReturn
	super visitReturn: aReturn.
	aReturn expression
		ifNotNil: [ :anExpression | self assert: anExpression isExpression ]