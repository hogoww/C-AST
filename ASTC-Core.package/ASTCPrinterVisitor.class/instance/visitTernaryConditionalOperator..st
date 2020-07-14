visiting
visitTernaryConditionalOperator: aTernaryConditionalOperator
	stream cr.
	self printTabCount: currentDepth.
	stream
		<< $(;
		<< 'aTernaryConditionalOperator';
		space.
	currentDepth := currentDepth + 1.
	super visitTernaryConditionalOperator: aTernaryConditionalOperator.
	currentDepth := currentDepth - 1.
	stream << ')'