visiting
visitBitwiseXorOperator: aBitwiseXorOperator

	stream cr.
	self printTabCount: currentDepth.
	stream
		<< $(;
		<< 'aBitwiseXorOperator';
		space.
	currentDepth := currentDepth + 1.
	super visitBitwiseXorOperator: aBitwiseXorOperator.
	currentDepth := currentDepth - 1.
	stream << ')'