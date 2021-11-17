comparing
= aType

	super = aType ifFalse: [ ^ false ].
	type = aType type ifFalse: [ ^ false ].
	^ true