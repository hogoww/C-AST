accessing
default: aDefault

	aDefault ifNotNil: [ aDefault parent: self ].
	default := aDefault