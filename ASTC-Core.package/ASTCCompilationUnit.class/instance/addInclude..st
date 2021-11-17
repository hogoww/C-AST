accessing
addInclude: anInclude

	anInclude parent: self.
	includes add: anInclude.
	^ true