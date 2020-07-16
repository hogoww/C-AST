visiting
visitLoop: aLoop
	aLoop condition
		ifNotNil: [ :aCondition | aCondition acceptVisitor: self ].
	aLoop body ifNotNil: [ :aBody | aBody acceptVisitor: self ].
	^ self visitStatement: aLoop