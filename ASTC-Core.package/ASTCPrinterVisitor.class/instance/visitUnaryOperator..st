visiting
visitUnaryOperator: anUnaryOperator

	stream cr.
	self printTabCount: currentDepth.
	stream
		<< $(;
		<< 'anUnaryOperator';
		space.
	currentDepth := currentDepth + 1.
	super visitUnaryOperator: anUnaryOperator.
	currentDepth := currentDepth - 1.
	stream << ')'