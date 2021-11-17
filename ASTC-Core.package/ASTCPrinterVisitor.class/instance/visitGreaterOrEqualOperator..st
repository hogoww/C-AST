visiting
visitGreaterOrEqualOperator: aGreaterOrEqualOperator

	stream cr.
	self printTabCount: currentDepth.
	stream
		<< $(;
		<< 'aGreaterOrEqualOperator';
		space.
	currentDepth := currentDepth + 1.
	super visitGreaterOrEqualOperator: aGreaterOrEqualOperator.
	currentDepth := currentDepth - 1.
	stream << ')'