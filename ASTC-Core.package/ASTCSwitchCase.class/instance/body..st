accessing
body: aBody
	aBody ifNotNil: [ aBody parent: self ].
	body := aBody