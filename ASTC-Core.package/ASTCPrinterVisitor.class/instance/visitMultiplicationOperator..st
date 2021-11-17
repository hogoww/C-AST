visiting
visitMultiplicationOperator: aMultiplicationOperator

	stream cr.
	self printTabCount: currentDepth.
	stream
		<< $(;
		<< 'aMultiplicationOperator';
		space.
	currentDepth := currentDepth + 1.
	super visitMultiplicationOperator: aMultiplicationOperator.
	currentDepth := currentDepth - 1.
	stream << ')'