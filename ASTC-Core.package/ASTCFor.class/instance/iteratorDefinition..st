accessing
iteratorDefinition: anIteratorDefinition
	anIteratorDefinition ifNotNil: [ anIteratorDefinition parent: self ].
	iteratorDefinition := anIteratorDefinition