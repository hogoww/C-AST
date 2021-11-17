visiting
visitVariableDefinition: aVariableDefinition

	stream cr.
	self printTabCount: currentDepth.
	stream
		<< $(;
		<< 'aVariableDefinition';
		space.
	currentDepth := currentDepth + 1.
	super visitVariableDefinition: aVariableDefinition.
	currentDepth := currentDepth - 1.
	stream << ')'