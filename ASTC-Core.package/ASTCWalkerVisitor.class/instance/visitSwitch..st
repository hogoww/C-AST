visiting
visitSwitch: aSwitch
	aSwitch cases
		ifNotNil:
			[ :cases | cases do: [ :aCases | aCases acceptVisitor: self ] ].
	aSwitch expression
		ifNotNil: [ :anExpression | anExpression acceptVisitor: self ].
	aSwitch default
		ifNotNil: [ :aDefault | aDefault acceptVisitor: self ]