comparing
= anIdentifier
	super = anIdentifier
		ifFalse: [ ^ false ].
	id = anIdentifier id
		ifFalse: [ ^ false ].
	^ true