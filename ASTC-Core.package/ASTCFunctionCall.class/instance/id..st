accessing
id: anId

	anId ifNotNil: [ anId parent: self ].
	id := anId