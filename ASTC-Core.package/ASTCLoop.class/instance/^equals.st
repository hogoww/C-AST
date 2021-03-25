comparing
= aLoop
	super = aLoop
		ifFalse: [ ^ false ].
	condition = aLoop condition
		ifFalse: [ ^ false ].
	body = aLoop body
		ifFalse: [ ^ false ].
	^ true