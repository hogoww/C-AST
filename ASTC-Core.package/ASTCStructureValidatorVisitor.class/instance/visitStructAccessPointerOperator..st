visiting
visitStructAccessPointerOperator: aStructAccessPointerOperator
	[ super
		visitStructAccessPointerOperator: aStructAccessPointerOperator ]
		on: AssertionFailure
		do: [ errors := errors + 1 ]