visiting
visitType: aType
	stream cr.
	self printTabCount: currentDepth.
	stream
		<< $(;
		<< 'aType';
		space.
	stream print: aType type.
	currentDepth := currentDepth + 1.
	super visitType: aType.
	currentDepth := currentDepth - 1.
	stream << ')'