visiting
visitBinaryOperator: aBinaryOperator
	stream cr.
	self printTabCount: currentDepth.
	stream
		<< $(;
		<< 'aBinaryOperator';
		space.
	currentDepth := currentDepth + 1.
	super visitBinaryOperator: aBinaryOperator.
	currentDepth := currentDepth - 1.
	stream << ')'