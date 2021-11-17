visiting
visitNode: aNode

	stream cr.
	self printTabCount: currentDepth.
	stream
		<< $(;
		<< 'aNode';
		space.
	stream print: aNode comment.
	currentDepth := currentDepth + 1.
	super visitNode: aNode.
	currentDepth := currentDepth - 1.
	stream << ')'