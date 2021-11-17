visiting
visitDefinition: aDefinition

	stream cr.
	self printTabCount: currentDepth.
	stream
		<< $(;
		<< 'aDefinition';
		space.
	currentDepth := currentDepth + 1.
	super visitDefinition: aDefinition.
	currentDepth := currentDepth - 1.
	stream << ')'