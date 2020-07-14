visiting
visitExpression: anExpression
	stream cr.
	self printTabCount: currentDepth.
	stream
		<< $(;
		<< 'anExpression';
		space.
	currentDepth := currentDepth + 1.
	super visitExpression: anExpression.
	currentDepth := currentDepth - 1.
	stream << ')'