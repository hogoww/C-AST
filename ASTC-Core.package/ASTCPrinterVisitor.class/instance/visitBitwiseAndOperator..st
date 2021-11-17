visiting
visitBitwiseAndOperator: aBitwiseAndOperator

	stream cr.
	self printTabCount: currentDepth.
	stream
		<< $(;
		<< 'aBitwiseAndOperator';
		space.
	currentDepth := currentDepth + 1.
	super visitBitwiseAndOperator: aBitwiseAndOperator.
	currentDepth := currentDepth - 1.
	stream << ')'