visiting
visitBitRightShiftOperator: aBitRightShiftOperator
	stream cr.
	self printTabCount: currentDepth.
	stream
		<< $(;
		<< 'aBitRightShiftOperator';
		space.
	currentDepth := currentDepth + 1.
	super visitBitRightShiftOperator: aBitRightShiftOperator.
	currentDepth := currentDepth - 1.
	stream << ')'