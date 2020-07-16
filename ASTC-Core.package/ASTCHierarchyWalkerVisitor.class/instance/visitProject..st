visiting
visitProject: aProject
	aProject compilationUnits
		ifNotNil: [ :compilationUnits | 
			compilationUnits
				do: [ :aCompilationUnits | aCompilationUnits acceptVisitor: self ] ].
	^ self visitNode: aProject