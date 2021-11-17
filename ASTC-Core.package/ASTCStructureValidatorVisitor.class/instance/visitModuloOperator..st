visiting
visitModuloOperator: aModuloOperator

	[ super visitModuloOperator: aModuloOperator ]
		on: AssertionFailure
		do: [ errors := errors + 1 ]