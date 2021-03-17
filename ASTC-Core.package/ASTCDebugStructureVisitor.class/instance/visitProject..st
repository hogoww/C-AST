visiting
visitProject: aProject
	super visitProject: aProject.
	aProject cFiles
		ifNotNil:
			[ :cFiles | cFiles do: [ :aCFiles | self assert: aCFiles iscFile ] ]