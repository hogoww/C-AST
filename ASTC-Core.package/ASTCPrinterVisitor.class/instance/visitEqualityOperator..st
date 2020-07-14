visiting
visitEqualityOperator: anEqualityOperator
	stream cr.
	self printTabCount: currentDepth.
	stream
		<< $(;
		<< 'anEqualityOperator';
		space.
	currentDepth := currentDepth + 1.
	super visitEqualityOperator: anEqualityOperator.
	currentDepth := currentDepth - 1.
	stream << ')'