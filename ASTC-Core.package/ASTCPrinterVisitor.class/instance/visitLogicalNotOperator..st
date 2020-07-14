visiting
visitLogicalNotOperator: aLogicalNotOperator
	stream cr.
	self printTabCount: currentDepth.
	stream
		<< $(;
		<< 'aLogicalNotOperator';
		space.
	currentDepth := currentDepth + 1.
	super visitLogicalNotOperator: aLogicalNotOperator.
	currentDepth := currentDepth - 1.
	stream << ')'