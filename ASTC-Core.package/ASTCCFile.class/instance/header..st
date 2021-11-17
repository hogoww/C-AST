accessing
header: aHeader

	aHeader ifNotNil: [ aHeader parent: self ].
	header := aHeader