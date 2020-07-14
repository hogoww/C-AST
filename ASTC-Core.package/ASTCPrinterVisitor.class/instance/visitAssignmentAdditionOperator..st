visiting
visitAssignmentAdditionOperator: anAssignmentAdditionOperator
	stream cr.
	self printTabCount: currentDepth.
	stream
		<< $(;
		<< 'anAssignmentAdditionOperator';
		space.
	currentDepth := currentDepth + 1.
	super visitAssignmentAdditionOperator: anAssignmentAdditionOperator.
	currentDepth := currentDepth - 1.
	stream << ')'