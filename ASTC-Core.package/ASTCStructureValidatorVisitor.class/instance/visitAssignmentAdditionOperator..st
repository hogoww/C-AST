visiting
visitAssignmentAdditionOperator: anAssignmentAdditionOperator

	[ 
	super visitAssignmentAdditionOperator: anAssignmentAdditionOperator ]
		on: AssertionFailure
		do: [ errors := errors + 1 ]