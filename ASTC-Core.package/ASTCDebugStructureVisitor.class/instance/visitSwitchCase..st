visiting
visitSwitchCase: aSwitchCase

	super visitSwitchCase: aSwitchCase.
	aSwitchCase expression ifNotNil: [ :anExpression | 
		self assert: anExpression isExpression ].
	aSwitchCase body ifNotNil: [ :aBody | self assert: aBody isStatement ]