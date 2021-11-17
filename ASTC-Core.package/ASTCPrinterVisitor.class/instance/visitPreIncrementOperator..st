visiting
visitPreIncrementOperator: aPreIncrementOperator

	stream cr.
	self printTabCount: currentDepth.
	stream
		<< $(;
		<< 'aPreIncrementOperator';
		space.
	currentDepth := currentDepth + 1.
	super visitPreIncrementOperator: aPreIncrementOperator.
	currentDepth := currentDepth - 1.
	stream << ')'