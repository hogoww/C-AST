visiting
visitStructureDefinition: aStructureDefinition
	stream cr.
	self printTabCount: currentDepth.
	stream
		<< $(;
		<< 'aStructureDefinition';
		space.
	currentDepth := currentDepth + 1.
	super visitStructureDefinition: aStructureDefinition.
	currentDepth := currentDepth - 1.
	stream << ')'