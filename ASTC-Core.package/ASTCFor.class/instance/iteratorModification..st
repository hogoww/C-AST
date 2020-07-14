accessing
iteratorModification: anIteratorModification
	anIteratorModification
		ifNotNil: [ anIteratorModification parent: self ].
	iteratorModification := anIteratorModification