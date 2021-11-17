visiting
visitOrOperator: anOrOperator

	stream cr.
	self printTabCount: currentDepth.
	stream
		<< $(;
		<< 'anOrOperator';
		space.
	currentDepth := currentDepth + 1.
	super visitOrOperator: anOrOperator.
	currentDepth := currentDepth - 1.
	stream << ')'