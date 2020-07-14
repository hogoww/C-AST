visiting
visitFunctionDefinition: aFunctionDefinition
	stream cr.
	self printTabCount: currentDepth.
	stream
		<< $(;
		<< 'aFunctionDefinition';
		space.
	currentDepth := currentDepth + 1.
	super visitFunctionDefinition: aFunctionDefinition.
	currentDepth := currentDepth - 1.
	stream << ')'