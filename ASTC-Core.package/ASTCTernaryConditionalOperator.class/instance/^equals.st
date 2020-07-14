testing
= aTernaryConditionalOperator
	super = aTernaryConditionalOperator
		ifFalse: [ ^ false ].
	condition = aTernaryConditionalOperator condition
		ifFalse: [ ^ false ].
	then = aTernaryConditionalOperator then
		ifFalse: [ ^ false ].
	else = aTernaryConditionalOperator else
		ifFalse: [ ^ false ].
	^ true