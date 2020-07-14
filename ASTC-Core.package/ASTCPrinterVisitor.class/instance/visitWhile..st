visiting
visitWhile: aWhile
	stream cr.
	self printTabCount: currentDepth.
	stream
		<< $(;
		<< 'aWhile';
		space.
	currentDepth := currentDepth + 1.
	super visitWhile: aWhile.
	currentDepth := currentDepth - 1.
	stream << ')'