visiting
visitPreprocessorInclude: aPreprocessorInclude
	aPreprocessorInclude cFiles
		ifNotNil:
			[ :cFiles | cFiles do: [ :aCFiles | aCFiles acceptVisitor: self ] ].
	^ self visitNode: aPreprocessorInclude