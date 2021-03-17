testing
= aProject
	super = aProject
		ifFalse: [ ^ false ].
	cFiles = aProject cFiles
		ifFalse: [ ^ false ].
	^ true