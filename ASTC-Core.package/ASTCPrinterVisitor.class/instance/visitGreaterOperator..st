visiting
visitGreaterOperator: aGreaterOperator

	stream cr.
	self printTabCount: currentDepth.
	stream
		<< $(;
		<< 'aGreaterOperator';
		space.
	currentDepth := currentDepth + 1.
	super visitGreaterOperator: aGreaterOperator.
	currentDepth := currentDepth - 1.
	stream << ')'