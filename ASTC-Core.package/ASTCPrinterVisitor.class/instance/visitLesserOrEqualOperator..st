visiting
visitLesserOrEqualOperator: aLesserOrEqualOperator

	stream cr.
	self printTabCount: currentDepth.
	stream
		<< $(;
		<< 'aLesserOrEqualOperator';
		space.
	currentDepth := currentDepth + 1.
	super visitLesserOrEqualOperator: aLesserOrEqualOperator.
	currentDepth := currentDepth - 1.
	stream << ')'