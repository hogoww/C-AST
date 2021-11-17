visiting
visitPreDecrementOperator: aPreDecrementOperator

	stream cr.
	self printTabCount: currentDepth.
	stream
		<< $(;
		<< 'aPreDecrementOperator';
		space.
	currentDepth := currentDepth + 1.
	super visitPreDecrementOperator: aPreDecrementOperator.
	currentDepth := currentDepth - 1.
	stream << ')'