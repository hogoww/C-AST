accessing
init: anInit
	anInit ifNotNil: [ anInit parent: self ].
	init := anInit