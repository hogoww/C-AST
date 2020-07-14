visiting
visitAddressOfOperator: anAddressOfOperator
	[ super visitAddressOfOperator: anAddressOfOperator ]
		on: AssertionFailure
		do: [ errors := errors + 1 ]