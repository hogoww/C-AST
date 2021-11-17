visiting
visitBitLeftShiftOperator: aBitLeftShiftOperator

	stream cr.
	self printTabCount: currentDepth.
	stream
		<< $(;
		<< 'aBitLeftShiftOperator';
		space.
	currentDepth := currentDepth + 1.
	super visitBitLeftShiftOperator: aBitLeftShiftOperator.
	currentDepth := currentDepth - 1.
	stream << ')'