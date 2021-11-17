accessing
implementation: anImplementation

	anImplementation ifNotNil: [ anImplementation parent: self ].
	implementation := anImplementation