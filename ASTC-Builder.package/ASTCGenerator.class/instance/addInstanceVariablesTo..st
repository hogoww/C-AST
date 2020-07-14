generation-state
addInstanceVariablesTo: aFMXClass
	aFMXClass properties
		do: [ :aProperty | 
			(aProperty isTypedProperty
				or: [ aProperty isRelationSide and: [ aProperty isContainer not ] ])
				ifTrue: [ self addInstanceVariable: aProperty to: aFMXClass realClass ].
			 ]