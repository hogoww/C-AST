visiting
visitAdditionOperator: anAdditionOperator

	stream cr.
	self printTabCount: currentDepth.
	stream
		<< $(;
		<< 'anAdditionOperator';
		space.
	currentDepth := currentDepth + 1.
	super visitAdditionOperator: anAdditionOperator.
	currentDepth := currentDepth - 1.
	stream << ')'