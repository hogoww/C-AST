accessing
name: aName

	aName ifNotNil: [ aName parent: self ].
	name := aName