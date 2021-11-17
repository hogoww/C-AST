visiting
visitLesserOperator: aLesserOperator

	stream cr.
	self printTabCount: currentDepth.
	stream
		<< $(;
		<< 'aLesserOperator';
		space.
	currentDepth := currentDepth + 1.
	super visitLesserOperator: aLesserOperator.
	currentDepth := currentDepth - 1.
	stream << ')'