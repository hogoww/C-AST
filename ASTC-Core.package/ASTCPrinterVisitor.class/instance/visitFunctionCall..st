visiting
visitFunctionCall: aFunctionCall
	stream cr.
	self printTabCount: currentDepth.
	stream
		<< $(;
		<< 'aFunctionCall';
		space.
	currentDepth := currentDepth + 1.
	super visitFunctionCall: aFunctionCall.
	currentDepth := currentDepth - 1.
	stream << ')'