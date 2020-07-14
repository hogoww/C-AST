visiting
visitCompilationUnit: aCompilationUnit
	[ super visitCompilationUnit: aCompilationUnit ]
		on: AssertionFailure
		do: [ errors := errors + 1 ]