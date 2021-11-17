visiting
visitTernaryConditionalOperator: aTernaryConditionalOperator

	super visitTernaryConditionalOperator: aTernaryConditionalOperator.
	aTernaryConditionalOperator condition ifNotNil: [ :aCondition | 
		self assert: aCondition isExpression ].
	aTernaryConditionalOperator then ifNotNil: [ :aThen | 
		self assert: aThen isExpression ].
	aTernaryConditionalOperator else ifNotNil: [ :anElse | 
		self assert: anElse isExpression ]