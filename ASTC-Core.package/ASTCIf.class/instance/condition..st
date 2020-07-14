accessing
condition: aCondition
	aCondition ifNotNil: [ aCondition parent: self ].
	condition := aCondition