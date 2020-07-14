visiting
visitIndexerOperator: anIndexerOperator
	stream cr.
	self printTabCount: currentDepth.
	stream
		<< $(;
		<< 'anIndexerOperator';
		space.
	currentDepth := currentDepth + 1.
	super visitIndexerOperator: anIndexerOperator.
	currentDepth := currentDepth - 1.
	stream << ')'