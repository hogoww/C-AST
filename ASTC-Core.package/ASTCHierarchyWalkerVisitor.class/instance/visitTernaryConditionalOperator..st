visiting
visitTernaryConditionalOperator: aTernaryConditionalOperator

	aTernaryConditionalOperator condition ifNotNil: [ :aCondition | 
		aCondition acceptVisitor: self ].
	aTernaryConditionalOperator then ifNotNil: [ :aThen | 
		aThen acceptVisitor: self ].
	aTernaryConditionalOperator else ifNotNil: [ :anElse | 
		anElse acceptVisitor: self ].
	^ self visitOperator: aTernaryConditionalOperator