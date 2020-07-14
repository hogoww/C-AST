accessing
type: aType
	aType ifNotNil: [ aType parent: self ].
	type := aType