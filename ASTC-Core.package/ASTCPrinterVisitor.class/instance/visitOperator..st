visiting
visitOperator: anOperator

	stream cr.
	self printTabCount: currentDepth.
	stream
		<< $(;
		<< 'anOperator';
		space.
	currentDepth := currentDepth + 1.
	super visitOperator: anOperator.
	currentDepth := currentDepth - 1.
	stream << ')'