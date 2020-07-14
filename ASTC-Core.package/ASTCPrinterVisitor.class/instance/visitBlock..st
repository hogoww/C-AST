visiting
visitBlock: aBlock
	stream cr.
	self printTabCount: currentDepth.
	stream
		<< $(;
		<< 'aBlock';
		space.
	currentDepth := currentDepth + 1.
	super visitBlock: aBlock.
	currentDepth := currentDepth - 1.
	stream << ')'