visiting
visitStatement: aStatement

	stream cr.
	self printTabCount: currentDepth.
	stream
		<< $(;
		<< 'aStatement';
		space.
	currentDepth := currentDepth + 1.
	super visitStatement: aStatement.
	currentDepth := currentDepth - 1.
	stream << ')'