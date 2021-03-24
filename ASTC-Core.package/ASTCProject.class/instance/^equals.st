testing
= aProject
	super = aProject
		ifFalse: [ ^ false ].
	path = aProject path
		ifFalse: [ ^ false ].
	cFiles = aProject cFiles
		ifFalse: [ ^ false ].
	^ true