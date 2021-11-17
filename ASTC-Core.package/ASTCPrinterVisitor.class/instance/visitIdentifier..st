visiting
visitIdentifier: anIdentifier

	stream cr.
	self printTabCount: currentDepth.
	stream
		<< $(;
		<< 'anIdentifier';
		space.
	stream print: anIdentifier id.
	currentDepth := currentDepth + 1.
	super visitIdentifier: anIdentifier.
	currentDepth := currentDepth - 1.
	stream << ')'