visiting
visitProject: aProject
	super visitProject: aProject.
	aProject compilationUnits
		ifNotNil: [ :compilationUnits | 
			compilationUnits
				do: [ :aCompilationUnits | self assert: aCompilationUnits isCompilationUnit ] ]