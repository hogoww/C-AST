visiting
visitNegationOperator: aNegationOperator

	stream cr.
	self printTabCount: currentDepth.
	stream
		<< $(;
		<< 'aNegationOperator';
		space.
	currentDepth := currentDepth + 1.
	super visitNegationOperator: aNegationOperator.
	currentDepth := currentDepth - 1.
	stream << ')'