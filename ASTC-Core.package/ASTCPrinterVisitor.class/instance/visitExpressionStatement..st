visiting
visitExpressionStatement: anExpressionStatement

	stream cr.
	self printTabCount: currentDepth.
	stream
		<< $(;
		<< 'anExpressionStatement';
		space.
	currentDepth := currentDepth + 1.
	super visitExpressionStatement: anExpressionStatement.
	currentDepth := currentDepth - 1.
	stream << ')'