testing
= aRawCCode
	super = aRawCCode
		ifFalse: [ ^ false ].
	cCode = aRawCCode cCode
		ifFalse: [ ^ false ].
	^ true