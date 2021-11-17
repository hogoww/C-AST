visiting
visitCastOperator: aCastOperator

	stream cr.
	self printTabCount: currentDepth.
	stream
		<< $(;
		<< 'aCastOperator';
		space.
	currentDepth := currentDepth + 1.
	super visitCastOperator: aCastOperator.
	currentDepth := currentDepth - 1.
	stream << ')'