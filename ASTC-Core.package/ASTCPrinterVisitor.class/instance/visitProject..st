visiting
visitProject: aProject

	stream cr.
	self printTabCount: currentDepth.
	stream
		<< $(;
		<< 'aProject';
		space.
	stream print: aProject path.
	currentDepth := currentDepth + 1.
	super visitProject: aProject.
	currentDepth := currentDepth - 1.
	stream << ')'