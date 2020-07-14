testing
= aProject
	super = aProject
		ifFalse: [ ^ false ].
	compilationUnits = aProject compilationUnits
		ifFalse: [ ^ false ].
	^ true