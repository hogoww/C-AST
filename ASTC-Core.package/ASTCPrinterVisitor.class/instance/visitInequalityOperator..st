visiting
visitInequalityOperator: anInequalityOperator
	stream cr.
	self printTabCount: currentDepth.
	stream
		<< $(;
		<< 'anInequalityOperator';
		space.
	currentDepth := currentDepth + 1.
	super visitInequalityOperator: anInequalityOperator.
	currentDepth := currentDepth - 1.
	stream << ')'