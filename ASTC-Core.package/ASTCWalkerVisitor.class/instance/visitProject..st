visiting
visitProject: aProject
	aProject cFiles
		ifNotNil:
			[ :cFiles | cFiles do: [ :aCFiles | aCFiles acceptVisitor: self ] ]