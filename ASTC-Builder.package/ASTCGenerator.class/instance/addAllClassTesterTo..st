generation-testing
addAllClassTesterTo: aRootClass
	builder classes
		do: [ :aClass |
			aClass ~= aRootClass
				ifTrue: [ self addClassTesterFor: aClass on: aRootClass returning: false ] ]