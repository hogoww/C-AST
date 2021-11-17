visiting
visitBitwiseNotOperator: aBitwiseNotOperator

	stream cr.
	self printTabCount: currentDepth.
	stream
		<< $(;
		<< 'aBitwiseNotOperator';
		space.
	currentDepth := currentDepth + 1.
	super visitBitwiseNotOperator: aBitwiseNotOperator.
	currentDepth := currentDepth - 1.
	stream << ')'