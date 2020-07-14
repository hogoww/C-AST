visiting
visitExpressionList: anExpressionList
	stream cr.
	self printTabCount: currentDepth.
	stream
		<< $(;
		<< 'anExpressionList';
		space.
	currentDepth := currentDepth + 1.
	super visitExpressionList: anExpressionList.
	currentDepth := currentDepth - 1.
	stream << ')'