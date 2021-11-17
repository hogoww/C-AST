visiting
visitBitwiseOrOperator: aBitwiseOrOperator

	stream cr.
	self printTabCount: currentDepth.
	stream
		<< $(;
		<< 'aBitwiseOrOperator';
		space.
	currentDepth := currentDepth + 1.
	super visitBitwiseOrOperator: aBitwiseOrOperator.
	currentDepth := currentDepth - 1.
	stream << ')'