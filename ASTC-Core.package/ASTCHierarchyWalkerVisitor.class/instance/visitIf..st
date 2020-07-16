visiting
visitIf: anIf
	anIf condition
		ifNotNil: [ :aCondition | aCondition acceptVisitor: self ].
	anIf then ifNotNil: [ :aThen | aThen acceptVisitor: self ].
	anIf else ifNotNil: [ :anElse | anElse acceptVisitor: self ].
	^ self visitStatement: anIf