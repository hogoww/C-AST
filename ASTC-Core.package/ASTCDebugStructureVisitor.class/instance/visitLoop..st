visiting
visitLoop: aLoop
	super visitLoop: aLoop.
	aLoop condition
		ifNotNil: [ :aCondition | self assert: aCondition isExpression ].
	aLoop body ifNotNil: [ :aBody | self assert: aBody isStatement ]