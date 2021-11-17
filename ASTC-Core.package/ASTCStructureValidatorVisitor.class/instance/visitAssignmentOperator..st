visiting
visitAssignmentOperator: anAssignmentOperator

	[ super visitAssignmentOperator: anAssignmentOperator ]
		on: AssertionFailure
		do: [ errors := errors + 1 ]