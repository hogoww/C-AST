visiting
visitAssignmentOperator: anAssignmentOperator

	stream cr.
	self printTabCount: currentDepth.
	stream
		<< $(;
		<< 'anAssignmentOperator';
		space.
	currentDepth := currentDepth + 1.
	super visitAssignmentOperator: anAssignmentOperator.
	currentDepth := currentDepth - 1.
	stream << ')'