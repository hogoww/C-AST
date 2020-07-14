accessing
compilationUnits: someCompilationUnits
	someCompilationUnits do: [ :each | each parent: self ].
	compilationUnits := someCompilationUnits