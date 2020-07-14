generation-state
addInstanceVariable: aProperty to: aClass
	(aClass allSlots anySatisfy: [ :each | each name = aProperty name ])
		ifTrue: [ ^ self ].	"we check if the slot already exists"
			
	debug
		ifTrue: [ Transcript
				show: 'property: ';
				show: aProperty;
				cr ].

	aClass addInstVarNamed: aProperty name.
	self addInstanceVariableAccessors: aProperty to: aClass