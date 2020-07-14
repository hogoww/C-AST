visiting
visitStructAccessStaticOperator: aStructAccessStaticOperator
	[ super visitStructAccessStaticOperator: aStructAccessStaticOperator ]
		on: AssertionFailure
		do: [ errors := errors + 1 ]