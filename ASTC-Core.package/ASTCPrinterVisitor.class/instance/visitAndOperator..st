visiting
visitAndOperator: anAndOperator

	stream cr.
	self printTabCount: currentDepth.
	stream
		<< $(;
		<< 'anAndOperator';
		space.
	currentDepth := currentDepth + 1.
	super visitAndOperator: anAndOperator.
	currentDepth := currentDepth - 1.
	stream << ')'