visiting
visitProject: aProject
	stream cr.
	self printTabCount: currentDepth.
	stream
		<< $(;
		<< 'aProject';
		space.
	currentDepth := currentDepth + 1.
	super visitProject: aProject.
	currentDepth := currentDepth - 1.
	stream << ')'