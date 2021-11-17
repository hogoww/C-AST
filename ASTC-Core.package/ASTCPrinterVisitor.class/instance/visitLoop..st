visiting
visitLoop: aLoop

	stream cr.
	self printTabCount: currentDepth.
	stream
		<< $(;
		<< 'aLoop';
		space.
	currentDepth := currentDepth + 1.
	super visitLoop: aLoop.
	currentDepth := currentDepth - 1.
	stream << ')'