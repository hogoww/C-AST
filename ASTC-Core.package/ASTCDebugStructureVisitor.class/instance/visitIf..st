visiting
visitIf: anIf
	super visitIf: anIf.
	anIf condition
		ifNotNil: [ :aCondition | self assert: aCondition isExpression ].
	anIf then ifNotNil: [ :aThen | self assert: aThen isStatement ].
	anIf else ifNotNil: [ :anElse | self assert: anElse isStatement ]