visiting
visitStructureDeclaration: aStructureDeclaration

	stream cr.
	self printTabCount: currentDepth.
	stream
		<< $(;
		<< 'aStructureDeclaration';
		space.
	currentDepth := currentDepth + 1.
	super visitStructureDeclaration: aStructureDeclaration.
	currentDepth := currentDepth - 1.
	stream << ')'