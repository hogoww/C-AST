accessing
value: aValue

	aValue ifNotNil: [ aValue parent: self ].
	value := aValue